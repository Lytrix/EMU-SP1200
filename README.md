# EMU SP-1200 #

BOM and schematic of the original E-MU SP-1200 Drumsampler. 

### Goal ###

I really love the true SP-1200 sound. The full exploding low-end when pitching down!
But >7000 Euros for a second hand SP-1200 is too much.

There are already many people working on clones which is awesome, but unfortunately no schematic or PCB is open sourced to enable more of us DIY-ers to save a lot of time on doing the same thing.

Therefore I would like to share at least my hours spend on creating a digital BOM to use by everyone so anyone has a good head start on recreating this icon in the truest form.


### Current Challenge ###

Finding a way to dump the IC information of 2 PROMs and 4 PAL Digital ICs from an original SP-1200 is an important step even for a FPGA version.

These are the involved chips:

```
Control Sequencer    - IC67  74S288 UC 
Register Files LSB   - IC88  74S288 LOG 
Sound Memory Intfc   - IC69  PAL12L6
Sequencer Memory     - IC62  PAL12H6

Program Memory       - IC130 PAL16R4 (Z80 RAM PAL)
ROM Memory           - IC148 PAL16R8 (DRAM PAL)
```

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

