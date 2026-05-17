# SystemVerilog D Flip-Flop Verification using Layered Testbench Architecture

## Overview

This project demonstrates the verification of a D Flip-Flop (DFF) using a basic SystemVerilog layered testbench architecture in Vivado.

The project includes:

- Design Under Test (DUT)
- Interface
- Transaction
- Generator
- Driver
- Monitor
- Scoreboard
- Environment
- Test
- Top Testbench

This architecture is the foundation for advanced verification methodologies like UVM.

---

# Project Objective

The objective of this project is to:

- Understand SystemVerilog verification architecture
- Learn object-oriented verification concepts
- Verify D Flip-Flop functionality
- Simulate and analyze waveforms in Vivado

---

# Tools Used

| Tool | Purpose |
|------|----------|
| Vivado | Simulation and Verification |
| SystemVerilog | Design and Testbench |
| XSIM | Behavioral Simulation |

---

# Design Description

The Design Under Test (DUT) is a synchronous D Flip-Flop.

## Features

- Positive edge triggered
- Asynchronous reset
- Single-bit data storage
- Behavioral modeling

---

# Design Code

```systemverilog
module dff(
input logic clk,
input logic rst,
input logic d,
output logic q
);

always @(posedge clk or posedge rst)
begin
if(rst)
q <= 0;
else
q <= d;
end

endmodule
```

---

# Testbench Architecture

The testbench follows a layered architecture.

<img width="664" height="756" alt="image" src="https://github.com/user-attachments/assets/46f2e7e3-bdd8-498e-928e-37bdf7c754b4" />


## Components

### Interface
Connects DUT and verification components.

### Transaction
Contains randomized stimulus data.

### Generator
Creates random transactions.

### Driver
Drives stimulus to DUT.

### Monitor
Observes DUT outputs.

### Scoreboard
Checks expected vs actual outputs.

### Environment
Connects all verification blocks.

### Test
Controls simulation execution.

---

# Verification Flow

```text
Generator → Driver → DUT → Monitor → Scoreboard
```

---

# Simulation Steps

1. Create Vivado Project
2. Add `design.sv`
3. Add `tb.sv`
4. Set `tb` as top module
5. Run Behavioral Simulation
6. Observe waveforms

---

# Expected Behavior

- When reset is high:
  - Output `q = 0`

- When reset becomes low:
  - Output `q` follows input `d`
  - Update occurs only at positive clock edge

---

# Simulation Waveform

<img width="1576" height="807" alt="Screenshot 2026-05-17 215138" src="https://github.com/user-attachments/assets/7e76545a-cf66-4606-963e-fed3a5442fe7" />


---

# RTL Schematic

<img width="1052" height="456" alt="image" src="https://github.com/user-attachments/assets/7daee608-844d-425f-9f13-4d8e1b943eee" />

---

# Applications

- Digital Sequential Circuits
- FPGA Design
- ASIC Verification
- VLSI Verification Learning
- UVM Foundation

---

# Learning Outcomes

After completing this project, the following concepts are understood:

- SystemVerilog Basics
- Layered Testbench Architecture
- Object-Oriented Verification
- Mailbox Communication
- Functional Verification
- Simulation using Vivado

---

# Future Enhancements

- Add Assertions
- Add Functional Coverage
- Convert to UVM Environment
- Add Random Constraints
- Add Multiple Testcases

