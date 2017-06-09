#!/bin/bash

clear

cd num_gen
make clean
make

./ngen 3 50 nums.txt


python create_test.py nums.txt ../out.v
./ngen 5 out.calcs 

cd ..
cd ..

iverilog test_bench/out.v verilog/*.v

./a.out
