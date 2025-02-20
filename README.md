# Unhandled NaN/Inf Values in Julia Function

This repository demonstrates a common error in Julia: failure to handle NaN (Not a Number) and Inf (Infinity) values in a function.  The `bug.jl` file contains the buggy function, while `bugSolution.jl` provides a corrected version.

The original function incorrectly processes NaN and Inf values, leading to unexpected or erroneous results.  The solution addresses this by explicitly checking for and handling these special values.

## Bug Description

The function `my_function` calculates the square of positive numbers and the negation of negative numbers. However, it fails to account for the potential input of NaN or Inf values. This could cause unexpected behavior or crashes in certain applications. 

## Solution

The improved function `improved_my_function` includes explicit checks for NaN and Inf.  If either is detected, it returns NaN.  Alternatively, you could choose to throw an error to halt execution in such situations.  This ensures robust and predictable function behavior regardless of the input.

## Usage

1. Clone the repository.
2. Run the Julia scripts (`bug.jl` and `bugSolution.jl`).
3. Observe the different outputs to understand the bug and its solution.