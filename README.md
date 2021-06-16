# EMU SP-1200 #

KiCad schematic of the original E-MU SP-1200 Drumsampler. 

### Goal ###

I really love the true SP-1200 sound. The full exploding low-end when pitching down!
But >7000 Euros for a second hand SP-1200 is too much.

There are already many people working on clones which is awesome, but unfortunately no schematic or PCB is open sourced to enable more of us DIY-ers to save a lot of time on doing the same thing.

Therefore I would like to share at least my hours spend on creating a digital schematic to use by everyone so anyone has a good head start on recreating this icon in the truest form.

I do want to give a big shout out to all the great people who are also working on this as solo missions and have inspired me to also start on a true recreation:

1. https://www.instagram.com/iampuesa/ 
2. https://www.instagram.com/epromfoundry/
3. https://www.instagram.com/oscthug/
4. https://www.islainstruments.com
5. https://low-hiss.com
6. Berhinger?
7. Me, but hopefully soon together with more enthousiasts!

Some youtube examples:
https://www.youtube.com/watch?v=0vhv8TNHkoc

Not an SP, but also great recreators:
1. http://www.e-licktronic.com/
2. https://shop.re-303.com

Please get in touch by adding a PR or if you want to help recreate a true clone with all the origional parts or can help with recreating the MCU code!


### Status ###

#### Done ####
- Digitized the original BOM into a more convient Excel including Mouser/Ebay links.

#### Todo ####
- Finalise the Mouser BOM
- Create the schematic in KiCad
- Create the Mainboard and Panelboard PCB in KiCad
- Create a PCB Front Panel
- For 2 Bipolar PROMs the data isn’t available to burn them with:
```
IC67 74S288 UC PROM (Sequencer section)
IC88 74S288 Log PROM (Register File LSBs section)
```

- If the PROMs data can't be sourced the FPGA route is the alternative step