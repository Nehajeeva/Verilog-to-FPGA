# Verilog-to-FPGA
A collection of digital circuit designs developed using **Verilog HDL** and implemented on **FPGA**, covering fundamental **combinational and sequential logic circuits**.
This repository focuses on the complete digital design flow, from **RTL coding and testbench development to simulation, synthesis, FPGA utilization analysis, and block-level design**.
## 📚 Contents
### 1. Combinational Circuits
Digital circuits that produce outputs based only on their present inputs.
### 2. Sequential Circuits
Digital circuits whose outputs depend on present inputs as well as previous states, including flip-flops, registers, counters, and other memory-based systems.
## 🛠️ Design Flow
  Verilog HDL
     ↓
   Testbench
     ↓
  Simulation
     ↓
  Verification
     ↓
   Synthesis
     ↓
FPGA Utilization
     ↓
 Block Diagram
## 🎯 Objective
The objective of this repository is to build a practical understanding of **digital system design using Verilog HDL**, while exploring how RTL designs are transformed into hardware implementations on FPGA platforms.
## 📂 Repository
Verilog-to-FPGA
   ### 🔹 [Combinational](./Combinational)
   ### 🔹 [Sequential](./Sequential)

# 📂 Combinational Circuits — Repository Structure

```text
Combinational/
│
├── Adder And Sub/
│   ├── add_and_sub.v
│   ├── add_and_sub_tb.v
│   ├── Simulation.png
│   ├── Utilization.png
│   ├── Synthesis.png
│   └── Block_Diagram.png
│
├── AND/
│   ├── andgate.v
│   ├── andgate_tb.v
│   ├── Simulation.png
│   ├── Utilization.png
│   ├── Synthesis.png
│   └── Block_Diagram.png
│
├── CLA/
│   ├── cla.v
│   ├── cla_tb.v
│   ├── Simulation.png
│   ├── Utilization.png
│   ├── Synthesis.png
│   └── Block_Diagram.png
│
├── Decoder/
│   ├── decoder.v
│   ├── decoder_tb.v
│   ├── Simulation.png
│   ├── Utilization.png
│   ├── Synthesis.png
│   └── Block_Diagram.png
│
├── Decrementer/
│   ├── decrementer.v
│   ├── decrementer_tb.v
│   ├── Simulation.png
│   ├── Utilization.png
│   ├── Synthesis.png
│   └── Block_Diagram.png
│
├── Demux/
│   ├── demux.v
│   ├── demux_tb.v
│   ├── Simulation.png
│   ├── Utilization.png
│   ├── Synthesis.png
│   └── Block_Diagram.png
│
├── Encoder/
│   ├── encoder.v
│   ├── encoder_tb.v
│   ├── Simulation.png
│   ├── Utilization.png
│   ├── Synthesis.png
│   └── Block_Diagram.png
│
├── Full Adder/
│   ├── full_adder.v
│   ├── full_adder_tb.v
│   ├── Simulation.png
│   ├── Utilization.png
│   ├── Synthesis.png
│   └── Block_Diagram.png
│
├── Incrementer/
│   ├── incrementer.v
│   ├── incrementer_tb.v
│   ├── Simulation.png
│   ├── Utilization.png
│   ├── Synthesis.png
│   └── Block_Diagram.png
│
├── Mux/
│   ├── mux.v
│   ├── mux_tb.v
│   ├── Simulation.png
│   ├── Utilization.png
│   ├── Synthesis.png
│   └── Block_Diagram.png
│
├── OR/
│   ├── orgate.v
│   ├── orgate_tb.v
│   ├── Simulation.png
│   ├── Utilization.png
│   ├── Synthesis.png
│   └── Block_Diagram.png
│
└── Mux64to1/
    ├── mux64to1.v
    ├── mux64to1_tb.v
    ├── Simulation.png
    ├── Utilization.png
    ├── Synthesis.png
    └── Block_Diagram.png
## 📁 Structure of Each Circuit
Each circuit follows the same structure:
```text
Circuit Name/
│
├── 1. UUT / RTL Code
├── 2. Testbench
├── 3. Simulation
├── 4. Utilization
├── 5. Synthesis
└── 6. Block Diagram
```

### 1. UUT / RTL Code
The actual **Verilog design** of the circuit.
Example:
incrementer.v
### 2. Testbench
Used to provide inputs and verify the circuit.
Example:
incrementer_tb.v
### 3. Simulation
Contains the simulation waveform showing that the circuit works correctly.
Simulation.png
### 4. Utilization
Contains the FPGA resource utilization report.
Utilization.png
### 5. Synthesis
Contains the synthesized circuit/netlist representation.
Synthesis.png
### 6. Block Diagram
Contains the graphical block-level representation.
Block_Diagram.png
## 🔷 Complete Circuit Collection
Current **Combinational** repository contains:
1.  AND Gate
2.  OR Gate
3.  Full Adder
4.  Adder and Subtractor
5.  Incrementer
6.  Decrementer
7.  Carry Look-Ahead Adder (CLA)
8.  Encoder
9.  Decoder
10. Multiplexer
11. Demultiplexer
12. 64-to-1 Multiplexer


