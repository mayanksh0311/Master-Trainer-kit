# FPGA Master Trainer Kit (32-in-1 Digital Logic Lab)

## Overview
A comprehensive digital logic trainer kit implemented on an FPGA (Boolean Board / Spartan-7). This project consolidates 32 standard digital electronics laboratory experiments—plus a hidden 4-bit ALU override—into a single, dynamically selectable hardware architecture using Verilog.

## Hardware Used
*   **Board:** Boolean FPGA Board
*   **FPGA:** Xilinx Spartan-7
*   **Inputs:** 16x Slide Switches, 4x Push Buttons
*   **Outputs:** 16x On-board LEDs

## System Architecture
The design utilizes a purely structural, multi-file hierarchy:
1.  **Zone 1 (Mode Selection):** 5 slide switches (`SW15-11`) act as a binary multiplexer selector to route the active sub-module to the output LEDs.
2.  **Zone 2 (ALU Override):** `SW10` acts as a hardware interrupt, bypassing the 32 cases to instantiate a full 4-bit Arithmetic Logic Unit.
3.  **Zone 3 (Data & Control):** The bottom 10 switches inject continuous 1-bit logic into the active module.
4.  **Zone 4 (Sequential Clocking):** Push buttons are mapped to `Clock`, `Reset`, `Set`, and `Load` to safely step through flip-flops and shift registers without switch bouncing.

## Features & Implemented Circuits
*(Copy and paste the markdown tables we generated for the Student Laboratory Manual here, organized by Combinational, Arithmetic, MUX/DEMUX, and Sequential logic).*

## How to Run
1. Clone this repository.
2. Open Xilinx Vivado and create a new RTL project.
3. Add the `.v` files from the `/src` directory as design sources.
4. Add the `boolean.xdc` file from the `/constrs` directory as constraints.
5. Generate Bitstream and program your FPGA.

## Author
*   **MAYANK SHARMA**
