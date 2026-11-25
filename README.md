# Verilog Learning Template

This folder contains small examples that introduce one Verilog concept at a time.

## Suggested learning order

| File | Topic |
|---|---|
| `and_gate.v` | Ports and a continuous assignment |
| `02_operators.v` | Logic, arithmetic, comparison, and concatenation |
| `03_always_comb.v` | Combinational `always_comb` blocks |
| `04_conditional.v` | `if/else` and ternary expressions |
| `05_case.v` | Multi-way selection with `case` |
| `06_flip_flop.v` | Clocked sequential logic |
| `07_counter.v` | A resettable binary counter |
| `08_shift_register.v` | Multi-bit registers and shifting |
| `09_fsm.v` | A simple finite-state machine |
| `10_parameters_generate.v` | Parameters and `generate` |
| `11_testbench.v` | A basic Verilog testbench |

## Compile and run

Using Icarus Verilog:

```sh
iverilog -g2012 -o sim_out 11_testbench.v and_gate.v
vvp sim_out
```

To compile a module with no testbench:

```sh
iverilog -g2012 -s module_name -o sim_out module_name.v
```

## Exercise system

For each file:

1. Read the comments and identify the inputs and outputs.
2. Predict the output for several input values.
3. Comment out or change one assignment.
4. Write a testbench case that checks the result.
5. Restore the original code and move to the next topic.
