
🚦 Traffic Light Controller (Verilog HDL)

A synthesizable Traffic Light Controller implemented in Verilog HDL using a Finite State Machine (FSM) approach. The design models a two-way intersection with coordinated signaling between a Highway and a Bypass road, ensuring safe and timed traffic flow.

📖 Overview

This project demonstrates a Moore FSM-based digital design where outputs depend solely on the current state. Timing for each traffic phase is controlled using a clock-driven counter, making the design suitable for both simulation and FPGA implementation.

🚥 Traffic Sequence

The controller operates in the following cyclic order:

Highway Green → Highway Yellow → All Red →
Bypass Green → Bypass Yellow → repeat

Each state ensures mutual exclusion between roads to prevent collisions.
🏗️ Design Architecture

The design is modular and follows standard RTL practices:

State Register
Stores the current state of the FSM.
Next-State Logic
Determines transitions based on timing conditions.
Output Logic
Generates traffic signals (Red, Yellow, Green) for both roads.
Timing Control
Implemented using a synchronous counter driven by the system clock.
 Key Features
 Fully synthesizable RTL design
✅ Moore FSM implementation
✅ Glitch-free state transitions using precise timing control
✅ No use of non-synthesizable constructs (#delay)
✅ Scalable timing parameters for real-world adaptation
✅ Clean and structured Verilog coding style
🧪 Simulation
Simulated using Xilinx Vivado (XSIM)
Testbench includes:
Clock generation
Reset sequencing
Simulation runtime control
Waveforms verify correct sequencing and timing of signals
📂 Project Structure
├── code.v           # Main FSM-based traffic controller
├── test_bench.v     # Testbench for simulation
└── README.md        # Project documentation
Key Learnings
Designing and implementing Finite State Machines (FSMs)
Importance of synchronous design practices
Proper handling of reset signals
Avoiding simulation-only constructs in RTL design
Debugging issues like:
State lock conditions
Timing mismatches
Unknown (X) propagation

 Future Improvements
Add pedestrian crossing signals
Implement sensor-based adaptive traffic control
Map design to FPGA hardware (real-time clock scaling)
Extend to multi-lane or multi-junction systems


Tools Used
Verilog HDL
Xilinx Vivado (XSIM Simulator)

 Author
Pradip
