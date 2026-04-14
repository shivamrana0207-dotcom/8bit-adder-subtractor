# 8-bit Adder/Subtractor (Verilog)

## Description
This project implements an 8-bit Adder/Subtractor using Verilog HDL. 
The design performs both addition and subtraction using 2’s complement logic.

## Tools Used
- Xilinx Vivado

## Working Principle
Subtraction is performed as:
A - B = A + (~B + 1)

Mode:
- 0 → Addition
- 1 → Subtraction

## Simulation Results

### Addition (10 + 5 = 15)
![Addition](results/waveform1.png)

### Subtraction (10 - 5 = 5)
![Subtraction](results/waveform2.png)

### Negative Result (5 - 10 = -5)
![Negative](results/waveform3.png)

## Project Structure
