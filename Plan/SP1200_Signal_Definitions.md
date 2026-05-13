# SP1200 Signal Name Definitions

| Name | Source | Destination | Type | Description |
| :--- | :--- | :--- | :--- | :--- |
| +A0.D | 1 | 2,3,6,8,13 | TTL | Main CPU Addr Bus 0 |
| +A1.D | 1 | 2,3,6,8 | TTL | Main CPU Addr Bus 1 |
| +A2.D | 1 | 3,4 | TTL | Main CPU Addr Bus 2 |
| +A3.D | 1 | 3,4 | TTL | Main CPU Addr Bus 3 |
| +A4.D | 1 | 3,4 | TTL | Main CPU Addr Bus 4 |
| +A5.D | 1 | 3,4 | TTL | Main CPU Addr Bus 5 |
| +A6.D | 1 | 3,4 | TTL | Main CPU Addr Bus 6 |
| +A7.D | 1 | 3,4 | TTL | Main CPU Addr Bus 7 |
| +A8.D | 1 | 3 | TTL | Main CPU Addr Bus 8 |
| +A9.D | 1 | 3 | TTL | Main CPU Addr Bus 9 |
| +A10.D | 1 | 3 | TTL | Main CPU Addr Bus 11 |
| +A12.D | 1 | 3 | TTL | Main CPU Addr Bus 12 |
| +A13.D | 1 | 3 | TTL | Main CPU Addr Bus 13 |
| +A14.D | 1 | 3 | TTL | Main CPU Addr Bus 14 |
| +A15.D | 1 | 3 | TTL | Main CPU Addr Bus 15 |
| +ADCEOC.D | 14 | 14 | TTL | ADC End of Conv. |
| +C20M.D | 1 | 3,4 | TTL | 20 MHz Clock |
| +C2MHZ.D | 1 | 2 | TTL | 2 MHz Clock |
| +C3MHZ.D | 1 | 3,4,10 | TTL | 3 MHz Clock |
| -C6MHZ | 1 | 4,10 | TTL | 6 MHZ Clock |
| +C7.D | 8 | 9 | TTL | uC Carry Interconnect |
| +CARRY.D | 9 | 7 | TTL | uC Carry Out |
| -CLE.D | 7 | 7 | TTL | Carry Latch Enable |
| +CNL7.D | 1 | 14 | TTL | Channel 7 Clk (Smpl) |
| +CNLO0.V | 16 | 17 | Ana. Volt. | Dyn. Filt Out Ch. 0 |
| +CNLO1.V | 16 | 17 | Ana. Volt. | Dyn. Filt Out Ch. 1 |
| +CNLS0.D | 7 | 8 | TTL | Channel Addr 0 |
| +CNLS1.D | 7 | 8,15 | TTL | Channel Addr 1 |
| +CNLS2.D | 7 | 8,15 | TTL | Channel Addr 2 + |
| -CNLS2.D | 7 | 8 | TTL | Channel Addr 2 - |
| +CNLSH0.V | 15 | 16 | Ana. Volt. | Channel 0 S/H out |
| +CNLSH1.V | 15 | 16 | Ana. Volt. | Channel 1 S/H out |
| +CNLSH2.V | 15 | 17 | Ana. Volt. | Channel 2 S/H out |
| +CNLSH3.V | 15 | 17 | Ana. Volt. | Channel 3 S/H out |
| +CNLSH4.V | 15 | 17 | Ana. Volt. | Channel 4 S/H out |
| +CNLSH5.V | 15 | 17 | Ana. Volt. | Channel 5 S/H out |
| +CNLSH6.V | 15 | 15 | Ana. Volt. | Channel 6 S/H out |
| +CNLSH7.V | 15 | 15 | Ana. Volt. | Channel 7 S/H out |
| -CSCTC.D | 4 | 2 | TTL | CTC Chip Select |
| +CSDISP.D | 4 | 8 | TTL | Display Chip Select |
| -CSPB.D | 4 | | TTL | Push Button Chip Sel. |
| +CSRADC.D | 4 | 5 | TTL | Read ADC Chip Select |
| -CSRPB.D | 4 | 5 | TTL | Read Push Button CS |
| -CSSIO.D | 4 | 2 | TTL | SIO Chip Select |
| -CSSM.D | 4 | | TTL | Sound RAM Chip Sel. |
| -CSWAD.D | 4 | 7 | TTL | Z80 Wr Reg. File CS |
| +CSWADC.D | 4 | 5 | TTL | Write ADC Chip Select |
| -CSWHI.D | 4 | 9 | TTL | Z80 uC Hi Byte CS |
| -CSWLD0.D | 4 | 6 | TTL | Wr LED Latch 0 CS |
| -CSWLD1.D | 4 | 6 | TTL | Wr LED Latch 1CS |
| -CSWLO.D | 4 | 9 | TTL | Z80 uC Lo Byte CS |
| -CSWLVH.D | 4 | 8 | TTL | Wr Vol. Hi Chip Sel |
| -CSWLVL.D | 4 | 8 | TTL | Wr Vol. Lo Chip Sel |
| -CSWPBL.D | 4 | 5 | TTL | Wr Push Buttons CS |
| +D0.D | 1 | 2,3,5,6,7,8,9 | TTL | Main CPU Data Bus 0 |
| +D1.D | 1 | 2,3,5,6,7,8,9 | TTL | Main CPU Data Bus 1 |
| +D2.D | 1 | 2,3,5,6,7,8,9 | TTL | Main CPU Data Bus 2 |
| +D3.D | 1 | 2,3,5,6,7,8,9 | TTL | Main CPU Data Bus 3 |
| +D4.D | 1 | 2,3,5,6,7,8,9 | TTL | Main CPU Data Bus 4 |
| +D5.D | 1 | 2,3,5,6,7,8,9 | TTL | Main CPU Data Bus 5 |
| +D6.D | 1 | 2,3,5,6,8,9 | TTL | Main CPU Data Bus 6 |
| +D7.D | 1 | 2,3,5,6,8,9 | TTL | Main CPU Data Bus 7 |
| +DAC0.D | 12 | 15 | TTL | Sound DAC Data 0 |
| +DAC1.D | 12 | 15 | TTL | Sound DAC Data 1 |
| +DAC2.D | 12 | 15 | TTL | Sound DAC Data 2 |
| +DAC3.D | 12 | 15 | TTL | Sound DAC Data 3 |
| +DAC4.D | 12 | 15 | TTL | Sound DAC Data 4 |
| +DAC5.D | 12 | 15 | TTL | Sound DAC Data 5 |
| +DAC6.D | 12 | 15 | TTL | Sound DAC Data 6 |
| +DAC7.D | 12 | 15 | TTL | Sound DAC Data 7 |
| +DAC8.D | 12 | 15 | TTL | Sound DAC Data 8 |
| +DAC9.D | 12 | 15 | TTL | Sound DAC Data 9 |
| +DAC10.D | 12 | 15 | TTL | Sound DAC Data 10 |
| +DAC11.D | 12 | 15 | TTL | Sound DAC Data 11 |
| -DOE.D | 7 | 9 | TTL | uC Latch Out Enable |
| +DACOUT.V | 15 | 14 | Ana. Volt. | Sound DAC Output |
| +GAIN1.D | 5 | 6,16 | TTL | Env/Gain Control Bit 1 |
| -GAIN2.D | 5 | 6,16 | TTL | Env/Gain Control Bit 2 |
| +IL7.D | 8 | 9 | TTL | Increment Latch Bit 7 |
| -ILE.D | 7 | 8 | TTL | Increment Latch Enab. |
| -INDEX | CN7 | 2 | TTL | Floppy Disk Index |
| -INPUT.D | 5 | 6,12,13,14 | TTL | Sample Input Select |
| -INT.D | 2 | 1 | TTL | CPU Interrupt Request |
| -IORQ.D | 1 | 2,4,13 | TTL | CPU I/O Request |
| +LATCH.D | 4 | 12 | TTL | Latch DAC Data |
| +LD0.D | 8 | 15 | TTL | Level Data Bit 0 |
| +LD1.D | 8 | 15 | TTL | Level Data Bit 1 |
| +LD2.D | 8 | 15 | TTL | Level Data Bit 2 |
| +LD3.D | 8 | 15 | TTL | Level Data Bit 3 |
| +LD4.D | 8 | 15 | TTL | Level Data Bit 4 |
| +LD5.D | 8 | 15 | TTL | Level Data Bit 5 |
| +LD6.D | 8 | 15 | TTL | Level Data Bit 6 |
| +LD7.D | 8 | 15 | TTL | Level Data Bit 7 |
| -M1.D | 1 | 2,3,4 | TTL | Z-80 M1 |
| -MLE.D | 7 | 9 | TTL | Snd Mem Addr Ltch En |
| -MREQ.D | 1 | 3 | TTL | Z-80 Mem. Req. |
| -NMI.D | -- | 1 | TTL | Z-80 Non-Mask Int. |
| +PHI.D | 1 | 2 | TTL | Z-80 Clock |
| +RA0.D | 7 | 8,9 | TTL | Reg. File Addr Bit 0 |
| +RA1.D | 7 | 8,9 | TTL | Reg. File Addr Bit 1 |
| +RA2.D | 7 | 8,9 | TTL | Reg. File Addr Bit 2 |
| +RA3.D | 7 | 8,9 | TTL | Reg. File Addr Bit 3 |
| +RA4.D | 7 | 8,9 | TTL | Reg. File Addr Bit 4 |
| +RA5.D | 7 | 8,9 | TTL | Reg. File Addr Bit 5 |
| +RAMA0.D | 10 | 11 | TTL | RAM Addr Bit 0 |
| +RAMA1.D | 10 | 11 | TTL | RAM Addr Bit 1 |
| +RAMA2.D | 10 | 11 | TTL | RAM Addr Bit 2 |
| +RAMA3.D | 10 | 11 | TTL | RAM Addr Bit 3 |
| +RAMA4.D | 10 | 11 | TTL | RAM Addr Bit 4 |
| +RAMA5.D | 10 | 11 | TTL | RAM Addr Bit 5 |
| +RAMA6.D | 10 | 11 | TTL | RAM Addr Bit 6 |
| +RAMA7.D | 10 | 11 | TTL | RAM Addr Bit 7 |
| -RAS3.D | 10 | 11 | TTL | Row Addr. Strobe 3 |
| -RAS4.D | 10 | 11 | TTL | Row Addr. Strobe 4 |
| -RAS5.D | 10 | 11 | TTL | Row Addr. Strobe 5 |
| -RD.D | 1 | 2,3,4 | TTL | Z-80 Read |
| +RDB16.D | 9 | 8 | TTL | Reg. File Data Bit 16 |
| +RDB17.D | 9 | 8 | TTL | Reg. File Data Bit 17 |
| +RDB18.D | 9 | 8 | TTL | Reg. File Data Bit 18 |
| +RDB19.D | 9 | 8 | TTL | Reg. File Data Bit 19 |
| +RDB20.D | 9 | 8 | TTL | Reg. File Data Bit 20 |
| +RDB21.D | 9 | 8 | TTL | Reg. File Data Bit 21 |
| +RDB22.D | 9 | 8 | TTL | Reg. File Data Bit 22 |
| +RDB23.D | 9 | 8 | TTL | Reg. File Data Bit 23 |
| -RESET.D | 1 | 2,3 | TTL | Reset |
| -RFSH.D | 1 | 3 | TTL | Dynamic RAM Refresh |
| +RLC.D | 4 | 2 | TTL | Receive Latch Clock |
| +ROS.D | 4 | 2 | TTL | Receive One-Shot Clk |
| -RSTPB.D | 18 | 1 | TTL | Force Reset Test Point |
| -RWP.D | 7 | 8,9 | TTL | Reg. File Read/Write |
| +RXC.D | 4 | 2 | TTL | SIO Receive Clock |
| +SDB0.D | 13 | 12 | TTL | Snd Data Bit 0 (Demx) |
| +SDB0A.D | 10,11 | 12,13 | TTL | Snd Data Bus A Bit 0 |
| +SDB0B.D | 10,11 | 12,13 | TTL | Snd Data Bus B Bit 0 |
| +SDB1.D | 13 | 12 | TTL | Snd Data Bit 1 (A+B) |
| +SDB1A.D | 10,11 | 12,13 | TTL | Snd Data Bus A Bit 1 |
| +SDB1B.D | 10,11 | 12,13 | TTL | Snd Data Bus B Bit 1 |
| +SDB2.D | 13 | 12 | TTL | Snd Data Bit 2 (A+B) |
| +SDB2A.D | 10,11 | 12,13 | TTL | Snd Data Bus A Bit 2 |
| +SDB2B.D | 10,11 | 12,13 | TTL | Snd Data Bus B Bit 2 |
| +SDB3.D | 13 | 12 | TTL | Snd Data Bit 3 (A+B) |
| +SDB3A.D | 10,11 | 12,13 | TTL | Snd Data Bus A Bit 3 |
| +SDB3B.D | 10,11 | 12,13 | TTL | Snd Data Bus B Bit 3 |
| +SDB4.D | 10,11 | 12,13 | TTL | Snd Data Bus Bit 4 |
| +SDB5.D | 10,11 | 12,13 | TTL | Snd Data Bus Bit 5 |
| +SDB6.D | 10,11 | 12,13 | TTL | Snd Data Bus Bit 6 |
| +SDB7.D | 10,11 | 12,13 | TTL | Snd Data Bus Bit 7 |
| +SDB8.D | 10,11 | 12,13 | TTL | Snd Data Bus Bit 8 |
| +SDB9.D | 10,11 | 12,13 | TTL | Snd Data Bus Bit 9 |
| +SDB10.D | 10,11 | 12,13 | TTL | Snd Data Bus Bit 10 |
| +SDB11.D | 10,11 | 12,13 | TTL | Snd Data Bus Bit 11 |
| -SELDSK.D | 2 | 4 | TTL | SMPTE/Disk Select |
| -SELECT | 2 | CN7 | TTL | Floppy Select |
| +SHSTB.D | 4 | 15 | TTL | Sample/Hold Strobe |
| -SIDE | 2 | CN7 | TTL | Floppy Disk Side Sel. |
| +SIOIEO.D | 2 | 2 | TTL | SIO Int. Ena. Out |
| +SMA0.D | 9 | 10 | TTL | Snd Mem Addr 0 |
| +SMA1.D | 9 | 10 | TTL | Snd Mem Addr 1 |
| +SMA2.D | 9 | 10 | TTL | Snd Mem Addr 2 |
| +SMA3.D | 9 | 10 | TTL | Snd Mem Addr 3 |
| +SMA4.D | 9 | 10 | TTL | Snd Mem Addr 4 |
| +SMA5.D | 9 | 10 | TTL | Snd Mem Addr 5 |
| +SMA6.D | 9 | 10 | TTL | Snd Mem Addr 6 |
| +SMA7.D | 9 | 10 | TTL | Snd Mem Addr 7 |
| +SMA8.D | 9 | 10 | TTL | Snd Mem Addr 8 |
| +SMA9.D | 9 | 10 | TTL | Snd Mem Addr 9 |
| +SMA10.D | 9 | 10 | TTL | Snd Mem Addr 10 |
| +SMA11.D | 9 | 10 | TTL | Snd Mem Addr 11 |
| +SMA12.D | 9 | 10 | TTL | Snd Mem Addr 12 |
| +SMA13.D | 9 | 10 | TTL | Snd Mem Addr 13 |
| +SMA14.D | 9 | 10 | TTL | Snd Mem Addr 14 |
| +SMA15.D | 9 | 10 | TTL | Snd Mem Addr 15 |
| +SMA16.D | 8 | 10 | TTL | Snd Mem Addr 16 |
| +SMA17.D | 8 | 10 | TTL | Snd Mem Addr 17 |
| +SMA18.D | 8 | 10 | TTL | Snd Mem Addr 18 |
| -SMACAS.D | 10 | 11 | TTL | Snd Mem Addr CAS |
| -SMOE.D | 13 | 10,11 | TTL | Snd Mem Output En. |
| +SMPAMP.V | 8 | 14 | Ana. Volt. | Sample Pre-amp Out |
| +SMPRLC.D | 2 | 4 | TTL | SMPTE Rec Latch Clk |
| +SMPROS.D | 2 | 4 | TTL | SMPTE 1-shot Lch Clk |
| +SMPRXC.D | 2 | 4 | TTL | SMPTE Receive Clock |
| -SMPTXC.D | 2 | 4 | TTL | SMPTE Transmit Clock |
| -STEP | 2 | CN7 | TTL | Floppy Disk Head Step |
| -SWEH.D | 13 | 10,11 | TTL | Snd Mem Wr Ena Hi |
| -SWEL.D | 13 | 10,11 | TTL | Snd Mem Wr Ena Lo |
| -TK00 | CN7 | 2 | TTL | Floppy Track 00 |
| -TOE.D | 7 | 8 | TTL | Temp Latch Out Ena |
| -TXC.D | 4 | 2 | TTL | Transmit Clock |
| +TXD.D | 2 | 4 | TTL | Transmit Data |
| +UCK.D | 7 | 8,9 | TTL | uC Main Clock + |
| -UCK.D | 1 | 4,7,10,13 | TTL | uC Main Clock - |
| +UCNL0.D | 1 | 7,8,13 | TTL | uC Chan Addr 0 |
| +UCNL1.D | 1 | 7,8,13 | TTL | uC Chan Addr 1 |
| +UCNL2.D | 1 | 7,8,13 | TTL | uC Chan Addr 2 |
| +UCNT0.D | 1 | 4,7,10,13 | TTL | uC State Counter Bit 0 |
| +UCNT1.D | 1 | 4,5,7,10,13,14 | TTL | uC State Counter Bit 1 |
| +UCNT2.D | 1 | 4,7,10,13 | TTL | uC State Counter Bit 2 |
| -WAIT.D | 13 | 1 | TTL | Z-80 Wait |
| -WD | 4 | CN7 | TTL | Floppy Disk Write |
| -WP | CN7 | 2 | TTL | Floppy Write Protect |
| -WR.D | 1 | 3,4,13 | TTL | Z-80 Write |
| -WTGT | 2 | CN7 | TTL | Floppy Write Gate |
