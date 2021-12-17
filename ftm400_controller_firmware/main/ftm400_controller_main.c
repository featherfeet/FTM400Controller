/*
 * FTM-400 controller code. Designed to run on an ESP32 with one UART connected to the FTM-400 base unit and one UART connected to the head unit (control panel) so that the code can intercept and modify the communications between the head unit and base unit.
 */

#include <stdlib.h>
#include <sys/fcntl.h>
#include <string.h>
#include <sys/errno.h>
#include <sys/unistd.h>
#include <sys/select.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "driver/uart.h"
#include "esp_log.h"
#include "esp_vfs.h"
#include "esp_vfs_dev.h"
#include "driver/gpio.h"

#define UART_BAUD_RATE 100000 // Baud rate (bits per second of the UART communications between the base unit and control panel). The FTM-400 uses 100000 exactly (the more common 115200 will NOT work).
#define UART_BUFFER_SIZE 1024 // Size of the receive buffer for UART data.

#define CONTROL_PANEL_UART 1 // Which UART peripheral of the ESP32 to use to communicate with the control panel.
#define CONTROL_PANEL_UART_DEVICE "/dev/uart/1" // Same thing as CONTROL_PANEL_UART, but as a device path string.
#define TX_TO_CONTROL_PANEL 17 // Which GPIO pin of the ESP32 _sends_ UART data _to_ the control panel. This must connect to the pad labeled "GREEN" on the control panel PCB.
#define RX_FROM_CONTROL_PANEL 16 // Which GPIO pin of the ESP32 _receives_ UART data _from_ the control panel. This must connect to the pad labeled "RED" on the control panel PCB.

#define BASE_UNIT_UART 2 // Which UART peripheral of the ESP32 to use to communicate with the base unit.
#define BASE_UNIT_UART_DEVICE "/dev/uart/2" // Same thing as BASE_UNIT_UART, but as a device path string.
#define TX_TO_BASE_UNIT 13 // Which GPIO pin of the ESP32 _sends_ UART data _to_ the base unit. This must connect to the RED wire in the cable going to the base unit.
#define RX_FROM_BASE_UNIT 12 // Which GPIO pin of the ESP32 _receives_ UART data _from_ the base unit. This must connect to the GREEN wire in the cable going to the base unit.

#define TX_FRAME_SIZE 70 // Size, in bytes, of the frames sent from the control panel to the base unit. They encode button presses, dial movements, touchscreen touches, and data from the GPS receiver.
#define RX_FRAME_SIZE 200 // Size, in bytes, of the frames sent from the base unit to the control panel. They encode what should be currently shown on the screen.

/**
 * Setup UART that connects to control panel.
 */
void setup_control_panel_uart(void) {
    uart_config_t uart_config = {
        .baud_rate = UART_BAUD_RATE,
        .data_bits = UART_DATA_8_BITS,
        .parity = UART_PARITY_DISABLE,
        .stop_bits = UART_STOP_BITS_1,
        .flow_ctrl = UART_HW_FLOWCTRL_DISABLE,
        .source_clk = UART_SCLK_APB,
    };
    int interrupt_allocation_flags = 0;
    #if CONFIG_UART_ISR_IN_IRAM
        interrupt_allocation_flags = ESP_INTR_FLAG_IRAM;
    #endif
    ESP_ERROR_CHECK(uart_driver_install(CONTROL_PANEL_UART, UART_BUFFER_SIZE * 2, 0, 0, NULL, interrupt_allocation_flags));
    ESP_ERROR_CHECK(uart_param_config(CONTROL_PANEL_UART, &uart_config));
    ESP_ERROR_CHECK(uart_set_pin(CONTROL_PANEL_UART, TX_TO_CONTROL_PANEL, RX_FROM_CONTROL_PANEL, UART_PIN_NO_CHANGE, UART_PIN_NO_CHANGE));
}

/**
 * Setup UART that connects to base unit.
 */
void setup_base_unit_uart(void) {
    uart_config_t uart_config = {
        .baud_rate = UART_BAUD_RATE,
        .data_bits = UART_DATA_8_BITS,
        .parity = UART_PARITY_DISABLE,
        .stop_bits = UART_STOP_BITS_1,
        .flow_ctrl = UART_HW_FLOWCTRL_DISABLE,
        .source_clk = UART_SCLK_APB,
    };
    int interrupt_allocation_flags = 0;
    #if CONFIG_UART_ISR_IN_IRAM
        interrupt_allocation_flags = ESP_INTR_FLAG_IRAM;
    #endif
    ESP_ERROR_CHECK(uart_driver_install(BASE_UNIT_UART, UART_BUFFER_SIZE * 2, 0, 0, NULL, interrupt_allocation_flags));
    ESP_ERROR_CHECK(uart_param_config(BASE_UNIT_UART, &uart_config));
    ESP_ERROR_CHECK(uart_set_pin(BASE_UNIT_UART, TX_TO_BASE_UNIT, RX_FROM_BASE_UNIT, UART_PIN_NO_CHANGE, UART_PIN_NO_CHANGE));
}

/**
 * Remove UART that connects to base unit.
 */
void remove_base_unit_uart(void) {
    if (uart_is_driver_installed(BASE_UNIT_UART)) {
        uart_driver_delete(BASE_UNIT_UART);
    }
}

/**
 * Setup the TX_TO_BASE_UNIT GPIO pin as an output. Removes the UART peripheral if it has been set up. This is used to toggle the line from low to high to cause the base unit to switch on and start sending data.
 */
void setup_base_unit_gpio(void) {
    // Remove the UART peripheral if it's already there so that we can control the pins directly.
    remove_base_unit_uart();
    // Setup output GPIO pins.
    gpio_config_t io_conf_out;
    io_conf_out.intr_type = GPIO_INTR_DISABLE; // Disable interrupts.
    io_conf_out.mode = GPIO_MODE_OUTPUT; // Set pins as outputs.
    io_conf_out.pin_bit_mask = (1ULL << TX_TO_BASE_UNIT); // Set which pins should be outputs.
    io_conf_out.pull_down_en = GPIO_PULLDOWN_DISABLE; // Disable internal pulldowns.
    io_conf_out.pull_up_en = GPIO_PULLUP_DISABLE; // Disable internal pullup.
    gpio_config(&io_conf_out); // Set GPIO configuration for output pins.
    // Setup input GPIO pins.
    gpio_config_t io_conf_in;
    io_conf_in.intr_type = GPIO_INTR_DISABLE; // Disable interrupts.
    io_conf_in.mode = GPIO_MODE_INPUT; // Set pins as outputs.
    io_conf_in.pin_bit_mask = (1ULL << RX_FROM_BASE_UNIT); // Set which pins should be inputs.
    io_conf_in.pull_down_en = GPIO_PULLDOWN_DISABLE; // Disable internal pulldowns.
    io_conf_in.pull_up_en = GPIO_PULLUP_ENABLE; // Enable internal pullup.
    gpio_config(&io_conf_in); // Set GPIO configuration for input pins.
}

/**
 * Setup the RX_FROM_CONTROL_PANEL GPIO pin as an input with a pullup to prevent the control panel UART receiving random noise when the control panel is off.
 */
void setup_control_panel_gpio(void) {
    // Setup RX_FROM_CONTROL_PANEL as input with internal pullup enabled.
    gpio_config_t io_conf_in;
    io_conf_in.intr_type = GPIO_INTR_DISABLE; // Disable interrupts.
    io_conf_in.mode = GPIO_MODE_INPUT; // Set pins as outputs.
    io_conf_in.pin_bit_mask = (1ULL << RX_FROM_CONTROL_PANEL); // Set which pins should be inputs.
    io_conf_in.pull_down_en = GPIO_PULLDOWN_DISABLE; // Disable internal pulldowns.
    io_conf_in.pull_up_en = GPIO_PULLUP_ENABLE; // Enable internal pullups.
    gpio_config(&io_conf_in); // Set GPIO configuration for input pins.
}

static const char *TURN_ON_RADIO_TAG = "turn_on_radio";
/**
 * Turn on the radio by toggling the TX_TO_BASE_UNIT line from low to high. setup_base_unit_gpio() must have been run before this (and the base unit UART cannot be enabled, since we need direct control of the GPIOs).
 */
void turn_on_radio(void) {
    ESP_LOGI(TURN_ON_RADIO_TAG, "Setting TX_TO_BASE_UNIT to LOW.");
    gpio_set_level(TX_TO_BASE_UNIT, 0);
    ESP_LOGI(TURN_ON_RADIO_TAG, "Delay 2 seconds...");
    vTaskDelay(2000 / portTICK_RATE_MS);
    ESP_LOGI(TURN_ON_RADIO_TAG, "Setting TX_TO_BASE_UNIT to HIGH.");
    gpio_set_level(TX_TO_BASE_UNIT, 1);
}

/**
 * Structure used to pass Unix-style file descriptors from the open() function to the FreeRTOS tasks that forward the UART frames.
 */
struct UARTFileDescriptors {
    int control_panel_uart_file_descriptor;
    int base_unit_uart_file_descriptor;
};

static const char *FORWARD_TX_FRAMES_TASK_TAG = "forward_tx_frames_task";
/**
 * FreeRTOS task that forwards data from the control panel to the base unit. We call these "TX frames" because they are transmitted by the control panel.
 *
 * @param arg A pointer to a UARTFileDescriptors structure.
 */
static void forward_tx_frames_task(void *arg) {
    // Get the Unix-style file descriptor of the UART connected to the base unit so that we can select() it.
    struct UARTFileDescriptors *uart_file_descriptors = (struct UARTFileDescriptors *) arg;
    int base_unit_uart_file_descriptor = uart_file_descriptors->base_unit_uart_file_descriptor;
    int control_panel_uart_file_descriptor = uart_file_descriptors->control_panel_uart_file_descriptor;

    // Parameters used for the select() call.
    fd_set file_descriptors_to_select;
    struct timeval timeout = {
        .tv_sec = 0,
        .tv_usec = 100000,
    };

    while (1) {
        // Use select() to tell whether any data has been received from the base unit.
        FD_ZERO(&file_descriptors_to_select);
        FD_SET(control_panel_uart_file_descriptor, &file_descriptors_to_select);
        int select_result = select(control_panel_uart_file_descriptor + 1, &file_descriptors_to_select, NULL, NULL, &timeout);

        if (select_result < 0) {
            ESP_LOGE(FORWARD_TX_FRAMES_TASK_TAG, "Select failed: errno %d", errno);
            break;
        }
        else if (select_result == 0) {
            //ESP_LOGI(FORWARD_TX_FRAMES_TASK_TAG, "Timeout reached on TX frame forwarder.");
        }
        else {
            if (FD_ISSET(control_panel_uart_file_descriptor, &file_descriptors_to_select)) {
                char received_byte;
                if (read(control_panel_uart_file_descriptor, &received_byte, 1) > 0) {
                    // If necessary, modify the received byte (TODO). Then forward it to the other UART.
                    write(base_unit_uart_file_descriptor, &received_byte, 1);
                }
                else {
                    ESP_LOGE(FORWARD_TX_FRAMES_TASK_TAG, "UART read error.");
                }
            }
            else {
                ESP_LOGE(FORWARD_TX_FRAMES_TASK_TAG, "No file descriptor set in select().");
            }
        }
    }

    vTaskDelete(NULL);
}

static const char *FORWARD_RX_FRAMES_TASK_TAG = "forward_rx_frames_task";
/**
 * FreeRTOS task that forwards data from the base unit to the control panel. We call these "RX frames" because they are received by the control panel.
 *
 * @param arg A pointer to a UARTFileDescriptors structure.
 */
static void forward_rx_frames_task(void *arg) {
    // Get the Unix-style file descriptor of the UART connected to the base unit so that we can select() it.
    struct UARTFileDescriptors *uart_file_descriptors = (struct UARTFileDescriptors *) arg;
    int base_unit_uart_file_descriptor = uart_file_descriptors->base_unit_uart_file_descriptor;
    int control_panel_uart_file_descriptor = uart_file_descriptors->control_panel_uart_file_descriptor;

    // Parameters used for the select() call.
    fd_set file_descriptors_to_select;
    struct timeval timeout = {
        .tv_sec = 0,
        .tv_usec = 100000,
    };

    while (1) {
        // Use select() to tell whether any data has been received from the base unit.
        FD_ZERO(&file_descriptors_to_select);
        FD_SET(base_unit_uart_file_descriptor, &file_descriptors_to_select);
        int select_result = select(base_unit_uart_file_descriptor + 1, &file_descriptors_to_select, NULL, NULL, &timeout);

        if (select_result < 0) {
            ESP_LOGE(FORWARD_RX_FRAMES_TASK_TAG, "Select failed: errno %d", errno);
            break;
        }
        else if (select_result == 0) {
            //ESP_LOGI(FORWARD_RX_FRAMES_TASK_TAG, "Timeout reached on RX frame forwarder.");
        }
        else {
            if (FD_ISSET(base_unit_uart_file_descriptor, &file_descriptors_to_select)) {
                char received_byte;
                if (read(base_unit_uart_file_descriptor, &received_byte, 1) > 0) {
                    // If necessary, modify the received byte (TODO). Then forward it to the other UART.
                    write(control_panel_uart_file_descriptor, &received_byte, 1);
                }
                else {
                    ESP_LOGE(FORWARD_RX_FRAMES_TASK_TAG, "UART read error.");
                }
            }
            else {
                ESP_LOGE(FORWARD_RX_FRAMES_TASK_TAG, "No file descriptor set in select().");
            }
        }
    }

    vTaskDelete(NULL);
}

static const char *MAIN_TAG = "main";
struct UARTFileDescriptors uart_file_descriptors;
void app_main(void) {
    // Emulate the power button being pressed so that the base unit starts sending data.
    setup_control_panel_gpio();
    setup_base_unit_gpio();
    turn_on_radio();
    // Setup the UART peripherals.
    setup_base_unit_uart();
    setup_control_panel_uart();
    // Setup Unix-style file descriptors for the UARTs.
    if ((uart_file_descriptors.control_panel_uart_file_descriptor = open(CONTROL_PANEL_UART_DEVICE, O_RDWR)) == -1) {
        ESP_LOGE(MAIN_TAG, "Cannot open control panel UART device.");
    }
    esp_vfs_dev_uart_use_driver(CONTROL_PANEL_UART);
    if ((uart_file_descriptors.base_unit_uart_file_descriptor = open(BASE_UNIT_UART_DEVICE, O_RDWR)) == -1) {
        ESP_LOGE(MAIN_TAG, "Cannot open base unit UART device.");
    }
    esp_vfs_dev_uart_use_driver(BASE_UNIT_UART);
    // Start forwarding data.
    xTaskCreate(forward_rx_frames_task, "forward_rx_frames_task", 4 * 1024, &uart_file_descriptors, 5, NULL);
    xTaskCreate(forward_tx_frames_task, "forward_tx_frames_task", 4 * 1024, &uart_file_descriptors, 5, NULL);
}
