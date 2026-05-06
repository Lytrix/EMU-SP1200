# EMU SP-1200 #

BOM and schematic of the original E-MU SP-1200 Drumsampler. 

### Goal ###

I really love the true SP-1200 sound. The full exploding low-end when pitching down!
But >7000 Euros for a second hand SP-1200 is too much.

There are already many people working on clones which is awesome, but unfortunately no schematic or PCB is open sourced to enable more of us DIY-ers to save a lot of time on doing the same thing.

Therefore I would like to share at least my hours spend on creating a digital BOM to use by everyone so anyone has a good head start on recreating this icon in the truest form.

### Subgoal ###

After gaining more experience with ADC/DAC I will try to only create the Analog to Digital and Digital to Analog conversion logic with changing the sample speed option.
This way I can build a small 12 bit eurorack module to convert audio in realtime. Similar to the Xaoc 8 bit devices and what epromfoundry build via USB. 

<<<<<<< HEAD
Finding a way to dump the IC information of 2 PROMs and 4 PAL Digital ICs from an original SP-1200 is an important step even for a FPGA version.
=======
From IC72 74HCT504 12 bits of audio are created. which can be buffered and put back at a lower speed to the DAC
UCNT1.D is the bit 1 for the uC State counter.

Pitch shifting is done by skipping (+1 octave) or double playing each sample (-1 octave) or inbetween values by alternating skipping/doubling using 000 0000 to 111 1111

One example for pitch shifting using a ATtiny85:
http://www.technoblogy.com/show?1L02

ADC
http://datasheets.pl/elementy_czynne/ic/DM2503.pdf

https://ww1.microchip.com/downloads/en/DeviceDoc/70005213f.pdf



DAC
https://nl.mouser.com/ProductDetail/Analog-Devices/LTC7541AKNPBF

https://forum.arduino.cc/t/spi-with-12-bit-word/449879/10


Sample rate of 26.040Hz = 26040 samples (=12bit words) per second



Pitch logic uses the clock to skip or double play the next sample:
Carry Adder 7 bit logic table (-1 LSB bit to correct) 1= play sample twice, 0= skip sample by going to address +2 instead of 1.

https://towardsdatascience.com/constructing-manipulating-classifying-and-generating-audio-with-digital-signal-processing-and-2c5a252dbab9

The interval: m2 is the factor 1.0594630943592953  
The interval: M2 is the factor 1.122462048309373
The interval: m3 is the factor 1.189207115002721
The interval: M3 is the factor 1.2599210498948732
The interval: P4 is the factor 1.3348398541700344
The interval: d5 is the factor 1.414213562373095
The interval: P5 is the factor 1.4983070768766815
The interval: m6 is the factor 1.5874010519681994
The interval: M6 is the factor 1.681792830507429
The interval: m7 is the factor 1.7817974362806785
The interval: M7 is the factor 1.8877486253633868
The interval: P8 is the factor 2.0


SRAM
1 byte = 8 bits
4 * 48 = 54 bits = 8 bytes

2 * the time 10 min. 26.040 Hz = 26.040 samples per second * 12 bits =   312.480 bits /8 =  39.060 bytes per second
                     96.000 Hz = 96.000 samples per second * 24 bits = 2.304.000 bits /8 = 288.000 bytes per second

https://nl.mouser.com/datasheet/2/268/25156A-469611.pdf


FIFO
https://electronics.stackexchange.com/questions/388258/in-digital-logic-when-given-a-requirement-of-a-64-byte-fifo-is-it-possible-to


### STM32 ADC/DAC WITH DMA ###
https://www.youtube.com/watch?v=zA3PVZzaUiU


### Challenges ###

I have photos of the the latest updated SP1200 pcb for the right parts and I am able find them. Most logic is programmed in EEPROMs. They appear to be simple lookup tables. The only challenge I have is how to best process the 12 bits after the ADC to the pitch correction and then back the DAC.

The pitch is build using a Carry: 1=Duplicating each sample. 1111111 for -1 Oct, 0 = skipping the second sample for + 1 Oct like 0000000 and specific intermediate values for each semitone. The lookup table I could already recreate using specific semitone frequency values.

Because it doesn’t really need any further digital processing, it won’t be needing a very big buffer or complex MCU with software to also learn.

So I would like to keep it as barebones as possible. just input/outout with a pitch control slider/knob to be able to fit in in a small module.

In theory I can directly connect the 12 ADC out lines to the 12 DAC lines so keep everything as 12bit streams and use a 12 bit latch when I need 2 samples played, but the ADC does have a data line. But I don’t have any knowledge yet on how to work with that.



Finding a way to dump the IC information of 2 PROMs and PAL Digital ICs from an original SP-1200 is an important step, else building the digital section even using FPGA won't be possible.
>>>>>>> 0a91861 (Added IC88 bin PROM)

These are the involved chips:

```
Control Sequencer    - IC67  74S288 UC 
Register Files LSB   - IC88  74S288 LOG (FOUND!)
Sound Memory Intfc   - IC69  PAL12L6
Sequencer Memory     - IC62  PAL12H6

Program Memory       - IC130 PAL16R4 (Z80 RAM PAL)
ROM Memory           - IC148 PAL16R8 (DRAM PAL)
```

Update:
Thanks to [Stefan Huebner](https://huebnerie.de/blog) IC88 PROM bin is available for future repairs. It is shared in this repo. Most others can be bought at Syntaur, but the preference is to obain the bin and jet files and no availability of IC67 unfortunately.

### Thanks ###

I do want to give a big shout out to all the great people who are also working on this as solo missions and have inspired me to also start on a true recreation:

1. https://www.instagram.com/iampuesa/ 
2. https://www.instagram.com/epromfoundry/
3. https://www.instagram.com/oscthug/
4. https://www.islainstruments.com
5. https://low-hiss.com
6. Behringer?
7. Me, but hopefully soon together with more enthousiasts!

Some youtube examples:
https://www.youtube.com/watch?v=0vhv8TNHkoc

Not an SP, but also great recreators:
1. http://www.e-licktronic.com/
2. https://shop.re-303.com

Please get in touch by adding a PR or if you want to help recreate a true clone with all the origional parts or can help with recreating the MCU code!


### Digital audio path documentation ###
1. [Python Pitch emulation of the SP-12 & SP-1200 signal chain](https://github.com/mwcm/pitcher)
2. [Stanford Slides Physical and Behavioral Circuit Modeling of the SP-12 Sampler](https://ccrma.stanford.edu/~dtyeh/sp12/yeh2007icmcsp12slides.pdf)
3. [Stanford PDF Physical and Behavioral Circuit Modeling of the SP-12 Sampler](https://ccrma.stanford.edu/~dtyeh/papers/yeh07_icmc_sp12.pdf)


#### Done ####
- Digitized the original BOM into a more convient Excel including Mouser/Ebay links.

#### Todo ####
- Finalise the sourcing options in the BOM like Mouser/Ebay
- Find Dumps of 2 Bipolar PROMs and 4 PAL ICs (the first 4 are also present in an SP-12)
- Create the schematic in KiCad
- Create the Mainboard and Panelboard PCB in KiCad
- Create a PCB Front Panel

