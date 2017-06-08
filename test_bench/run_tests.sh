#!/bin/bash

clear

cd ..

iverilog test_bench/out.v verilog/*.v

./a.out
