# SP-1200 DRAM to SRAM Conversion Strategy

## 1. Executive Summary
The original E-mu SP-1200 used Dynamic RAM (DRAM), which requires complex, clock-synchronized multiplexing (splitting addresses into Rows and Columns) and constant refresh cycles to prevent data loss. This is the **only** reason the SP-1200 required a complex, registered PAL16R4 (IC130) and two 74HCT157 multiplexers. 

By replacing the obsolete DRAM with modern Static RAM (SRAM), you eliminate the need for multiplexing and refreshing. This allows you to delete the multiplexer chips entirely and replace the complex registered PAL with a simple, unclocked combinatorial GAL. The new GAL acts purely as an "Address Decoder," simply looking at the Z-80's address lines and turning the SRAM on/off instantly.

*Note: Unlike the SP-12, the SP-1200 loads its OS from a floppy disk into RAM and does not use system ROMs.*

## 2. Recommended Modern Components
*   **The Logic Chip:** **Microchip ATF16V8B** (or ATF22V10C if you need more pins). This is the modern, in-production, 5V EEPROM equivalent of a GAL16V8. It can be programmed endlessly and easily handles combinatorial logic.
*   **The SRAM Chip(s):** **Alliance Memory AS6C1008** (128K x 8-bit) or **AS6C4008** (512K x 8-bit). These are standard, 5V-compatible parallel SRAMs. They are incredibly fast (55ns), require no clock, and wire directly to the Z-80 address and data buses.

## 3. Signal Mapping: What Stays and What Goes
When you design your new PCB, the wiring between the Z-80 CPU, the new GAL, and the new SRAM becomes much simpler.

**Signals to DISCARD (Do not connect to the new GAL):**
*   `+C20M.D` (20 MHz Clock) — *SRAM doesn't need a clock.*
*   `+C3MHZ.D` (3 MHz Clock) — *No longer needed.*
*   `-RFSH.D` (Z-80 Refresh) — *SRAM doesn't need refreshing.*
*   `-M1.D` (Machine Cycle 1) — *Usually ignored for simple SRAM decoding.*
*   `-RAS` and `-CAS` — *Row/Column strobes are obsolete.*
*   `MUX Select` — *Multiplexers are deleted.*

**Signals to KEEP (Wire these from the Z-80 to the new GAL inputs):**
*   `-MREQ.D` (Memory Request) — *Tells the GAL the CPU wants memory.*
*   `-RD.D` (Read) — *CPU wants to read.*
*   `-WR.D` (Write) — *CPU wants to write.*
*   `+A13.D`, `+A14.D`, `+A15.D` — *The top address lines. The GAL looks at these to know which bank of RAM the CPU is asking for.*
*   `-CSPB.D` (Push Button CS) — *Keeps the RAM from activating when the CPU is reading the front panel buttons.*

**Signals to GENERATE (Wire these from the GAL outputs to the SRAM):**
*   `-RAM_CE` (Chip Enable) — *Goes to SRAM Pin `CE`.*
*   `-OE` (Output Enable) — *Goes to SRAM `OE` pin.*
*   `-WE` (Write Enable) — *Goes to SRAM `WE` pin.*

*(Note: The Z-80 Address lines A0-A15 and Data lines D0-D7 now wire **directly** to the SRAM, completely bypassing the old multiplexers).*

## 4. Initial CUPL Code Template
Here is the baseline CUPL code you will compile using `GALasm` or `WinCUPL` to burn onto your ATF16V8B. 

*Note: The exact combination of A13, A14, and A15 used to trigger specific SRAM chips depends on the SP-1200's specific memory map, which you will need to verify from the schematic. This example provides a basic template for enabling RAM.*

```cupl
Name       SP1200_SRAM_Decoder;
PartNo     001;
Date       2026-05-13;
Revision   01;
Designer   Lytrix;
Company    DIY;
Assembly   None;
Location   IC130_Replacement;
Device     g16v8; /* Compiles for standard GAL16V8 / ATF16V8 */

/* ------------------------------------------------------------------ */
/* INPUT PINS (From Z-80 CPU)                                         */
/* ------------------------------------------------------------------ */
Pin 1  = MREQ;    /* Z-80 Memory Request (Active Low) */
Pin 2  = RD;      /* Z-80 Read (Active Low) */
Pin 3  = WR;      /* Z-80 Write (Active Low) */
Pin 4  = A15;     /* Address Line 15 */
Pin 5  = A14;     /* Address Line 14 */
Pin 6  = A13;     /* Address Line 13 */
Pin 7  = CSPB;    /* Push Button Chip Select (Active Low) */

/* ------------------------------------------------------------------ */
/* OUTPUT PINS (To SRAM)                                              */
/* ------------------------------------------------------------------ */
Pin 13 = RAM_CE;  /* SRAM Chip Enable (Active Low) */
Pin 14 = MEM_OE;  /* Memory Output Enable (Active Low) */
Pin 15 = MEM_WE;  /* Memory Write Enable (Active Low) */

/* ------------------------------------------------------------------ */
/* LOGIC EQUATIONS                                                    */
/* ------------------------------------------------------------------ */

/* 
 * RAM CHIP ENABLE:
 * Activate SRAM when there is a Memory Request (!MREQ),
 * and the CPU is NOT trying to read the push buttons (CSPB is HIGH).
 * (Add A13/A14/A15 logic here depending on the specific memory map)
 */
!RAM_CE = !MREQ & CSPB;

/* 
 * OUTPUT ENABLE (Read):
 * Tell the SRAM to output data when Z-80 asserts Read (!RD).
 */
!MEM_OE = !RD;

/* 
 * WRITE ENABLE (Write):
 * Tell the SRAM to save data when Z-80 asserts Write (!WR).
 */
!MEM_WE = !WR;
```
