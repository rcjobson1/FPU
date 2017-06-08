from sys import argv
from random import choice as rand_choice
import struct

def main():

    if len(argv) != 3:
        print("usage: python create_test.py <num_file> <output file>")
        return

    num_file = argv[1]
    filename = argv[2]

    floats_and_hexes = read_num_file(num_file)

    hexes = [str(i[1]) for i in floats_and_hexes]
    floats = [float(i[0]) for i in floats_and_hexes]

    operands = generate_operands(len(floats)/2) #generate a list of random operands of length floats/2




    write_verilog_file(filename, hexes, operands)
    test_calculations(floats, operands)

def IEEE_convert(input_number):
    input_number = float(input_number)
    s = struct.pack('>f', input_number)
    return hex(struct.unpack('>l', s)[0])

def generate_operands(length):
    choices = [0,1,2,3]
    operands = []

    for i in range(0,length):
        rnum = rand_choice(choices)
        operands.append(rnum)
    return operands

def read_num_file(filename):
    """Takes in number file and returns a list of tuples
    with the float value as such and IEEE-754 hex form as string"""
    num_file = open(filename, "r")
    numbers = []
    for pair in num_file.readlines():
        (float_num, hex_num) = pair.split(",")
        numbers.append((float(float_num), hex_num.strip()))
    return numbers

def write_verilog_file(filename, hexes, operands):
    text_constant = """`timescale 1ns / 100ps\nmodule test;


    initial begin
        $dumpfile("TESTWAV.vcd");
        $dumpvars(0,test);
    end

    event		error_event;

    reg clk = 0;
    always #10 clk = !clk;

    reg[2:0] fpu_op;
    reg [1:0] fpu_rmode = 2;
    reg [31:0] opa, opb;


    initial begin
"""

    text_end = """end

    wire [31:0] out;
    wire snan, qnan, inf, ine, overflow, underflow, div_by_zero, zero;

    fpu u0(clk, fpu_rmode, fpu_op, opa, opb, out, snan, qnan, inf, ine, overflow, underflow, div_by_zero, zero);


    initial begin
      #1000 $finish;
    end

    initial begin
      $display("time\\topa\\topb\\tout");
      $monitor("%d,\\t%h,\\t%h,\\t%h,", $time, opa,opb,out);
    end


    endmodule"""


    test_string = ""

    for i in range(0, len(hexes), 2):
        opa = hexes[i] # Get the 2 values from hexes list
        opb = hexes[i+1]
        operand = operands[i/2]

        test_string += "#20 fpu_op <= %d;\n" % operand

        test_string += "opa <= 32'h%s;\nopb <= 32'h%s;\n\n" % (opa, opb)



    f = open(filename, "w+")
    f.write(text_constant)
    f.write(test_string)
    f.write(text_end)

    f.close()

def test_calculations(floats, operands):
    f = open("out.calcs", "w+")
    for i in range(0, len(floats), 2):
        operand = operands[i/2]
        opa = floats[i]
        opb = floats[i+1]

        if operand == 0:
            res = opa + opb
            f.write("%s +" % res)
            f.write("\n")
        elif operand == 1:
            res =  opa - opb
            f.write("%s -" % res)
            f.write("\n")
        elif operand == 2:
            res = opa * opb
            f.write("%s *" % res)
            f.write("\n")
        elif operand == 3:
            res = opa / opb
            f.write("%s /" % res)
            f.write("\n")
    f.close()




if __name__ == "__main__":
    main()
