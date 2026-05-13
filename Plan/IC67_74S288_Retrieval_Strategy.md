# IC67 (74S288) Reverse Engineering Strategy

## 1. Overview
IC67 is a **74S288** (or equivalent 82S123 / 27S19), which acts as the Microcontroller (uC) State Machine ROM in the SP-1200 Control Sequencer.
*   **The Good News:** It is not a PAL with complex logic equations; it is simply a tiny 32-byte Bipolar PROM (Programmable Read-Only Memory). It acts as a pure lookup table.
*   **The Challenge:** Modern programmers like the T48 do not natively support reading 16-pin Bipolar PROMs. You must build a simple passive adapter to trick the T48 into reading it as a standard EPROM.

## 2. IC67 Pin Connections (From Schematic)

**Inputs (Address Lines - What the PROM looks up):**
*   Pin 10 (A0): `+CARRY.D` (via IC95 flip-flop)
*   Pin 11 (A1): `+UCNL0.D` (uC Channel Addr 0)
*   Pin 12 (A2): `+UCNT0.D` (uC State Counter Bit 0)
*   Pin 13 (A3): `+UCNT1.D` (uC State Counter Bit 1)
*   Pin 14 (A4): `+UCNT2.D` (uC State Counter Bit 2)
*   Pin 15 (-CE): Tied to Ground (Always Enabled)

**Outputs (Data Lines - The state machine control signals):**
*   Pin 1 (Q0): Goes to IC64 (Multiplexer for `+RA0.D`)
*   Pin 2 (Q1): Goes to IC64 (Multiplexer for `+RA1.D`)
*   Pin 3 (Q2): Goes to IC64 (Multiplexer for `+RA2.D`)
*   Pin 4 (Q3): Goes to IC68 (Flip-flop for `-MLE.D`)
*   Pin 5 (Q4): `-WLE.D` (Write Latch Enable)
*   Pin 6 (Q5): `-ILE.D` (Increment Latch Enable)
*   Pin 7 (Q6): Goes to IC82/IC66 (Logic for `-CLE.D`, `-TOE.D`, `-DOE.D`)
*   Pin 9 (Q7): Goes to IC66 (Logic for `-RWP.D`)

## 3. Step-by-Step Retrieval Process

### Step A: Build the "EPROM Trick" Adapter
You will need a breadboard and jumper wires to map the 16-pin 74S288 to a standard 24-pin **2716 EPROM** footprint that the T48 programmer understands.

**Wiring Map (74S288 -> 2716 Footprint):**
*   **Power:** Pin 16 (VCC) -> 2716 Pin 24 (VCC) | Pin 8 (GND) -> 2716 Pin 12 (GND)
*   **Addresses:** 
    *   Pin 10 (A0) -> 2716 Pin 8 (A0)
    *   Pin 11 (A1) -> 2716 Pin 7 (A1)
    *   Pin 12 (A2) -> 2716 Pin 6 (A2)
    *   Pin 13 (A3) -> 2716 Pin 5 (A3)
    *   Pin 14 (A4) -> 2716 Pin 4 (A4)
*   **Data:** 
    *   Pin 1 (Q0) -> 2716 Pin 9 (D0)
    *   Pin 2 (Q1) -> 2716 Pin 10 (D1)
    *   Pin 3 (Q2) -> 2716 Pin 11 (D2)
    *   Pin 4 (Q3) -> 2716 Pin 13 (D3)
    *   Pin 5 (Q4) -> 2716 Pin 14 (D4)
    *   Pin 6 (Q5) -> 2716 Pin 15 (D5)
    *   Pin 7 (Q6) -> 2716 Pin 16 (D6)
    *   Pin 9 (Q7) -> 2716 Pin 17 (D7)
*   **Crucial Step:** Tie all *unused* address pins on the 2716 footprint (A5 through A10) directly to Ground. Tie the 2716 `-CE` and `-OE` pins (Pins 18 and 20) to Ground.

### Step B: Dump the Data
1.  Insert your adapter into the T48 programmer.
2.  Open the Xgpro software and select a generic **2716 EPROM**.
3.  Click "Read".
4.  The software will dump a 2KB `.bin` file. **Only the first 32 bytes (Addresses `0x00` to `0x1F`) contain the actual 74S288 data.** The rest will be empty/repeating.

### Step C: Emulate and Replace
Because you cannot easily buy or program a blank 74S288 Bipolar PROM today, you will use a modern GAL to emulate it.
1.  Take the 32 bytes of data you just dumped.
2.  Write a CUPL script for an **ATF16V8B** GAL. Instead of logic equations, you will use the `FIELD` and `TABLE` commands in CUPL to create a direct lookup table matching those 32 bytes.
3.  Compile the `.jed` file and burn it to the ATF16V8B using your T48.
4.  Install the ATF16V8B into the SP-1200 (it is pin-compatible with the 74S288 footprint, just overhangs by 4 pins which you leave unconnected or tie to ground depending on your adapter design).