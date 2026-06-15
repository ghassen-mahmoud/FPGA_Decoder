# FPGA 3-to-8 Decoder on Cyclone V

## Overview

This project implements a 3-to-8 decoder in VHDL and demonstrates the complete FPGA design flow using Intel Quartus Prime and ModelSim. The design is simulated, synthesized, and deployed on a Cyclone V FPGA development board.

The decoder receives a 3-bit input and activates one of eight outputs according to the input value. The outputs follow a one-hot encoding scheme, where only one output is active at a time.

## Objectives

* Learn the FPGA design workflow
* Develop combinational logic circuits in VHDL
* Perform functional verification using a testbench
* Apply pin assignments through Quartus constraint files
* Program and test the design on a Cyclone V FPGA board

## Project Structure

```text
FPGA_Decoder/
│
├── decoder.vhd
├── decoder_tb.vhd
├── decoder.qsf
├── decoder_pins.qsf
├── decoder.sdc
├── README.md
```

## Design Description

### Inputs

| Signal | Width  | Description   |
| ------ | ------ | ------------- |
| din    | 3 bits | Decoder input |

### Outputs

| Signal | Width  | Description            |
| ------ | ------ | ---------------------- |
| dout   | 8 bits | One-hot decoder output |

### Truth Table

| din | dout     |
| --- | -------- |
| 000 | 00000001 |
| 001 | 00000010 |
| 010 | 00000100 |
| 011 | 00001000 |
| 100 | 00010000 |
| 101 | 00100000 |
| 110 | 01000000 |
| 111 | 10000000 |

## Simulation

A dedicated VHDL testbench is used to verify the functionality of the decoder.

The testbench automatically applies all possible input combinations from 000 to 111 with a delay of 100 ns between each test vector.

Expected output sequence:

```text
00000001
00000010
00000100
00001000
00010000
00100000
01000000
10000000
```

Simulation tools:

* ModelSim
* QuestaSim

## FPGA Implementation

Target platform:

* Cyclone V FPGA

Development tools:

* Intel Quartus Prime
* ModelSim

Implementation flow:

1. Create Quartus project
2. Add VHDL source files
3. Configure pin assignments
4. Run compilation
5. Verify timing constraints
6. Generate .sof programming file
7. Program FPGA using USB-Blaster
8. Verify operation using board switches and LEDs

## Results

The decoder was successfully:

* Simulated in ModelSim
* Synthesized in Quartus Prime
* Programmed on a Cyclone V FPGA
* Verified using physical switches and LEDs

## Learning Outcomes

Through this project, the following FPGA concepts were explored:

* VHDL design entry
* Combinational logic implementation
* Functional simulation
* Testbench development
* Pin assignment management
* Timing constraint generation
* FPGA configuration and programming
