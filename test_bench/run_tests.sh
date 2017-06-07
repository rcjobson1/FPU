#!/bin/bash

clear

cd ..

iverilog test_bench/skeleton_tb.v verilog/*.v

./a.out
