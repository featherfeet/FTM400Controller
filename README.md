# FTM-400 Controller

## FTM-400 Head Unit Control Protocol

The FTM-400 radio has a base unit that contains the actual radio electronics and a head unit that contains a touchscreen, buttons, and dials. The cable between these two units has RJ-11 4P4C connectors on both ends (see [documentation here](https://www.hamoperator.com/Fusion/FusionFiles/K9EQ-FUSION-PDF-0005_Extension_Cables.pdf)). The cable to the microphone has an RJ-11 6P6C connector.

### Physical Layer

The RJ-11 4P4C cable for the head unit carries four wires, which are broken out inside the head unit and soldered to labeled pads on the head unit PCB:

* Red wire - control unit UART TX, base unit UART RX (i. e. data flows from the control unit to the base unit). Within this project, this is called the TX line because the controller operates from the perspective of the head unit.

* Green wire - control unit UART RX, base unit UART TX (i. e. data flows from the base unit to the control unit). Within this project, this is called the RX line because the controller operates from the perspective of the head unit.

* Yellow wire - GND, confusingly enough.

* Black wire - 13.8 VDC power, also confusingly.

The UART link is 100000 baud serial. It will *not* decode correctly at the more common 115200 baud. It uses 3.3 V logic levels, 8-bit bytes with 1 stop bit, no parity bit, and HIGH (3.3 V) idle level.

The following setup line using the PySerial library should work, assuming that `/dev/serial0` is a UART connected to the radio correctly:

```
import serial

serial.Serial(port = "/dev/serial0", baudrate = 100000, bytesize = 8, parity = 'N', stopbits = 1, timeout = None)
```

My oscilloscope (an SDS 1104X-E from Siglent) refused to decode the serial link, but saving the waveform and decoding in Sigrok worked excellently. If you use a Raspberry Pi to decode the serial, which can be advantageous when trying to analyze how different actions on the control panel affect the data sent via serial, be sure to use a buffer chip (or just some 10K resistors) to make sure that the Raspberry Pi's UART doesn't load the lines so much that it interferes with communication.

### Protocol Layer

#### TX Frames

70-byte long frames are sent by the control unit on the TX line. Each byte in this frame has some control function. The first byte is the only byte with the most-significant bit set to 1, so it's usually 0x80 or 0x81. Logic that needs to detect the start of a TX frame should use `byte & 128 == 128` to detect when a TX frame begins.

The *first byte* in the TX frame, as well as indicating the start of the frame, encodes the number of steps the frequency dial encoder for the A band has moved since the last frame. Since the dial is continuously rotatable, this is a relative number of steps--you must sum up the values over time to get the total number of steps. The least-significant 7 bits are a 7-bit 2's-complement integer (negative for CCW, positive for CW). The following Python example code does the conversion correctly, albeit hackishly:

```
from bitstring import Bits

Bits(bin = f"{frame[0]:08b}"[3:]).int
```

The *second byte* in the TX frame encodes the number of steps the frequency dial encoder for the B band has moved. It is encoded the same way as the A band dial.

The *third byte* in the TX frame is normally zero but becomes 0x40 when the power/lock button is pressed. It becomes 0xB when the F/MW button is pressed. A short press on the power/lock button locks the screen. A long press (i. e. sending 0x40 for many frames) shuts down the radio.

The *fourth byte* in the TX frame (`buffer[3]` if the frame has been loaded into a zero-indexed array) controls the volume of the speaker for the A-band (the band displayed in the top half of the screen). It can be in the range [0, 127], inclusive. Setting the most-significant bit to 1 will cause the radio to immediately shut off because it will interpret the byte as the start of a new frame, then decode the rest of the frame wrong.

The *fifth byte* in the TX frame controls the volume of the speaker for the B-band (the band displayed in the bottom half of the screen). The same limits/restrictions as A band volume apply.
