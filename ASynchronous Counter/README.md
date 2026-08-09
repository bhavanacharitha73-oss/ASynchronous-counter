# 4-Bit Asynchronous Counter Using Verilog

## Description

An **asynchronous counter**, also called a **ripple counter**, is a sequential digital circuit in which the flip-flops do not receive the clock signal simultaneously. The first flip-flop is driven by the external clock, while each subsequent flip-flop is triggered by the output of the previous flip-flop.

This project implements a **4-bit asynchronous binary up counter** using Verilog HDL. The counter counts from `0000` to `1111` and then returns to `0000`.

## Features

* 4-bit asynchronous binary counter
* Ripple-counter architecture
* Positive-edge clock operation
* Asynchronous active-high reset
* Counts from 0 to 15
* Automatic wrap-around
* Verilog HDL implementation
* Testbench verification
* Waveform generation

## Inputs and Outputs

| Signal       | Direction | Description                    |
| ------------ | --------- | ------------------------------ |
| `clk`        | Input     | External clock signal          |
| `reset`      | Input     | Asynchronous active-high reset |
| `count[3:0]` | Output    | 4-bit counter output           |

## Working Principle

Unlike a synchronous counter, an asynchronous counter does not use the same clock signal for every flip-flop.

The clock sequence is:

```text
External Clock
      ↓
   Flip-Flop 0
      ↓
   Flip-Flop 1
      ↓
   Flip-Flop 2
      ↓
   Flip-Flop 3
```

Each flip-flop output acts as the clock for the next flip-flop. Therefore, the change in state ripples through the counter.

The counting sequence is:

```text
0000 → 0001 → 0010 → 0011
     → 0100 → 0101 → 0110 → 0111
     → 1000 → 1001 → 1010 → 1011
     → 1100 → 1101 → 1110 → 1111
     → 0000
```

## Asynchronous vs Synchronous Counter

| Feature           | Asynchronous Counter       | Synchronous Counter        |
| ----------------- | -------------------------- | -------------------------- |
| Clock             | Rippled through flip-flops | Common clock               |
| Speed             | Slower                     | Faster                     |
| Design            | Simple                     | More complex               |
| Propagation delay | Higher                     | Lower                      |
| Main use          | Simple counting/division   | High-speed digital systems |

## Applications

Asynchronous counters are commonly used in:

* Frequency division
* Digital clocks
* Event counters
* Timing circuits
* Frequency counters
* Simple digital systems

## Files

* `README.md` – Project documentation.
* `asynchronous_counter.v` – Counter design.
* `asynchronous_counter_tb.v` – Testbench.
* `simulation_output.txt` – Expected simulation results.

## Tools Used

* Verilog HDL
* Icarus Verilog / ModelSim / Vivado
* GTKWave
* GitHub

## How to Run

Compile the design and testbench:

```bash
iverilog -o async_counter_sim asynchronous_counter.v asynchronous_counter_tb.v
```

Run the simulation:

```bash
vvp async_counter_sim
```

View the waveform:

```bash
gtkwave asynchronous_counter.vcd
```

## Expected Result

After reset is activated, the counter starts at `0000`. The counter then increments through all 16 binary states. Since the flip-flops are clocked in a ripple arrangement, the output changes sequentially rather than all bits changing simultaneously.

## Conclusion

This project demonstrates the working principle of an asynchronous or ripple counter using Verilog HDL. It helps understand flip-flop clocking, propagation delay, binary counting, and frequency division.
