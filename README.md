# Sine Wave Generator (SystemVerilog)

This project implements a synthesizable sine wave generator in SystemVerilog, using a finite state machine (FSM), clock division, and a quarter-wave lookup table (LUT). The output is a signed 9-bit sine wave (in two's complement format), and the frequency is controlled via an input parameter.

## Author

Ofir Malkiely

## Files

- `sin_gen.sv` — Main sine wave generator module. Includes:
  - FSM with 5 states: `IDL`, `Q_1` to `Q_4`
  - Clock divider controlled by `period_sel`
  - LUT addressing with quarter-wave symmetry
  - Output: 9-bit signed sine (`sin_out`)
  - Optional integrator module instantiation

- `sin_lut.sv` — Lookup table containing sine values for the first quarter of the wave (0 to π/2). The rest of the waveform is mirrored and inverted in `sin_gen`.

## Features

- Parameterizable frequency via `period_sel` (controls internal clock rate)
- Compact and hardware-friendly quarter-wave LUT
- FSM-based waveform generation
- Smooth transitions between waveform quarters
- Optional integration of `sin_out` via `integrator` module

## Ports

### `sin_gen.sv`
| Signal       | Direction | Width | Description                              |
|--------------|-----------|--------|------------------------------------------|
| `clk`        | input     | 1      | System clock                              |
| `resetb`     | input     | 1      | Active-low reset                          |
| `en`         | input     | 1      | Enable signal to start waveform generation |
| `period_sel` | input     | 8      | Sets frequency (inverse relation)         |
| `sin_out`    | output    | 9      | 9-bit signed sine output (two’s complement) |

## FSM Diagram

```
    IDL
     |
     v
    Q_1 → Q_2 → Q_3 → Q_4
     ^                   |
     |-------------------|
```

## Example Output

A full waveform is constructed over 4 phases:
- Q1: ascend 0→π/2
- Q2: descend π/2→π
- Q3: descend π→3π/2 (negative)
- Q4: ascend 3π/2→2π (negative)


