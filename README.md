# ECE 128 – Lab 1: 8-to-1 Multiplexer

## Project Description
This project implements an **8-to-1 Multiplexer (MUX)** in Verilog.  
Three coding styles were explored: **behavioral, dataflow, and structural**.  
The MUX was tested in simulation using Vivado, and then implemented on the **Basys3 FPGA board** to verify correct operation with physical inputs (switches) and outputs (LEDs).

## Simulation Instructions
1. Open **Vivado**.
2. Create a new project and add the Verilog files, put the non tb ones in the design sources aand the testbench from in the simulation sources.
3. Update your constraints file as necessary for corresponding inputs
4. Set the testbench as the **Simulation Top**.
5. Run **Behavioral Simulation**.
6. Use the waveform viewer to confirm that the selected input (`D0`–`D7`) is routed correctly to the output `Y` based on the select lines (S2 S1 S0).


## FPGA Implementation Instructions
1. In Vivado, set the desired design file (e.g., `mux8to1_behavioral.v`) as the **Top Module**.
2. Add the `constraints/basys3.xdc` file for pin mappings:
   - Switches `SW[7:0]` → Data inputs `D0–D7`
   - Switches `SW[10:8]` → Select inputs `S2–S0`
   - LED `LD0` → Output `Y`
3. Run:
   - **Synthesis**
   - **Implementation**
   - **Generate Bitstream**
4. Open **Hardware Manager** → Connect to Basys3 → Program Device.
5. Verify correct operation by toggling switches:
   - Example: If `S2S1S0 = 101`, the output `Y` should match input `D5`.

---

## Area Analysis
After running synthesis/implementation, use Vivado reports to compare:
- **Reports → Utilization Report** 
- **Reports → Timing Summary** 

Record results for each coding style (structural, dataflow, behavioral) and compare efficiency.

---
