# IC62 (PAL12H6) Reverse Engineering Strategy

## 1. Overview
IC62 is a **PAL12H6**, which acts as the Sequencer Memory controller in the SP-1200. 
*   **The Good News:** It is a purely combinatorial chip (no internal clocks or flip-flops). This means its logic can be 100% perfectly reverse-engineered via brute-force black-box testing.
*   **The Challenge:** The security fuse is blown, meaning standard programmers (like the T48) cannot read the internal code natively. You must use a hardware adapter to brute-force the truth table.

## 2. IC62 Pin Connections (From Schematic)

**Inputs (What the PAL listens to):**
*   Pin 1: `+C3MHZ.D` (3 MHz Clock - *Note: Used here as a logic signal, not an internal flip-flop clock*)
*   Pin 2: `-UCK.D` (Microcontroller Main Clock -)
*   Pin 3: `+UCNT0.D` (Microcontroller State Counter Bit 0)
*   Pin 4: `+UCNT1.D` (Microcontroller State Counter Bit 1)
*   Pin 5: `+UCNT2.D` (Microcontroller State Counter Bit 2)
*   Pin 6: `-IORQ.D` (CPU I/O Request)
*   Pin 7: `-WR.D` (Z-80 Write)
*   Pin 8: `-RD.D` (Z-80 Read)
*   Pin 9: `-C6MHZ.D` (6 MHz Clock)
*   Pin 11: `+A5.D` (Address Line 5)
*   Pin 12: `+A6.D` (Address Line 6)
*   Pin 19: `+A7.D` (Address Line 7)

**Outputs (What the PAL controls):**
*   Pin 13 (O0): `+LATCH.D` (Latch DAC Data)
*   Pin 14 (O1): `+CSDISP.D` (Display Chip Select)
*   Pin 15 (O2): `+CSRADC.D` (Read ADC Chip Select)
*   Pin 16 (O3): `+CSWADC.D` (Write ADC Chip Select)
*   Pin 17 (O4): `+SHSTB.D` (Sample/Hold Strobe)
*   Pin 18 (O5): `+SHSTB.0` (Sample/Hold Strobe 0)

## 3. Step-by-Step Retrieval Process

### Step A: Build or Acquire a Dumper
Because the T48 cannot read secured PALs natively, you must use a brute-force dumper.
*   **Recommended Tool:** The **DuPAL** Arduino Shield.
*   **Why:** It is open-source, specifically designed for this task, and handles the PC-side data capture automatically.

### Step B: Brute-Force the Truth Table
1.  Insert the original IC62 into the DuPAL ZIF socket.
2.  Run the DuPAL Analyzer software on your Mac.
3.  The Arduino will cycle through all 4,096 possible input combinations (2^12 inputs = 4,096 states).
4.  The software will record the outputs for every state and generate a raw Truth Table file.

### Step C: Logic Minimization
The raw Truth Table is too large to write by hand. You must compress it into clean Boolean equations.
1.  Feed the raw Truth Table file into a logic minimizer tool like **Espresso** (often bundled with PAL dumping tools).
2.  The software will output the minimized Boolean equations (e.g., `!LATCH = !WR & A5 & A6...`).

### Step D: Compile and Burn
1.  Write the minimized equations into a `.pld` text file using **CUPL** syntax.
2.  Compile the `.pld` file using **GALasm** (on macOS) to generate a `.jed` (JEDEC) file.
3.  Place a modern **ATF16V8B** chip into your T48 programmer.
4.  Use **minipro** (on macOS) to burn the `.jed` file onto the ATF16V8B.
5.  Install the new chip into the SP-1200.