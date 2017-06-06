#!/bin/bash

clear

cd ..

iverilog test_bench/ryantb.v verilog/*.v

./a.out
