from random import getrandbits as grb
from random import choice
import num_conv as nc
from sys import argv
from ast import literal_eval


def test_64(num_test_cases):
    operators = [0, 1, 2, 3]
    operations = []

    for i in range(0, num_test_cases):
        rbitsa = hex(grb(64))
        rbitsb = hex(grb(64))

        opa = nc.convert_from_64(rbitsa)
        opb = nc.convert_from_64(rbitsb)
        op = choice(operators)

        if op == 0:
            result = opa + opb
        elif op == 1:
            result = opa - opb
        elif op == 2:
            result = opa * opb
        else:
            result = opa/opb

        packaged = (opa, opb, op, result)
        operations.append(packaged)

    return operations


def test_32(num_test_cases):
    operators = [0, 1, 2, 3]
    operations = []

    for i in range(0, num_test_cases):
        rbitsa = hex(grb(32))
        rbitsb = hex(grb(32))

        opa = nc.convert_from_64(rbitsa)
        opb = nc.convert_from_64(rbitsb)
        op = choice(operators)

        if op == 0:
            result = opa + opb
        elif op == 1:
            result = opa - opb
        elif op == 2:
            result = opa * opb
        else:
            result = opa/opb

        packaged = (opa, opb, op, result)
        operations.append(packaged)

    return operations


def test_16(num_test_cases):
    operators = [0, 1, 2, 3]
    operations = []

    for i in range(0, num_test_cases):
        rbitsa = hex(grb(16))
        rbitsb = hex(grb(16))

        opa = nc.convert_from_64(rbitsa)
        opb = nc.convert_from_64(rbitsb)
        op = choice(operators)

        if op == 0:
            result = opa + opb
        elif op == 1:
            result = opa - opb
        elif op == 2:
            result = opa * opb
        else:
            result = opa/opb

        packaged = (opa, opb, op, result)
        operations.append(packaged)

    return operations

def generate_64(test_vectors):
    return_string = "always #" +  str(len(test_vectors) * 30 + 50*len(test_vectors) + 1000 ) + " $finish;\n"
    return_string += "initial begin\n"
    for vector in test_vectors:

        opa = nc.convert_64(vector[0])[2:] # the 2:0 gets rid of the 0x part
        opb = nc.convert_64(vector[1])[2:]

        if opa[-1] == "L":
            opa = opa[:-1]

        if opb[-1] == "L":
            opb = opb[:-1]


        fpu_op = vector[2]
        return_string += "#40 fpu_op <= " + str(fpu_op) + ";\n"
        return_string += "opa <= 64'h" + opa + ";\n"
        return_string += "opb <= 64'h" + opb + ";\n\n"

    return_string += "end\n"
    return return_string






def generate_32(test_vectors):
    return_string = "always #" +  str(len(test_vectors) * 30 + 50*len(test_vectors) + 1000 ) + " $finish;\n"
    return_string += "initial begin\n"
    for vector in test_vectors:

        opa = nc.convert_64(vector[0])[2:] # the 2:0 gets rid of the 0x part
        opb = nc.convert_64(vector[1])[2:]

        if opa[-1] == "L":
            opa = opa[:-1]

        if opb[-1] == "L":
            opb = opb[:-1]


        fpu_op = vector[2]
        return_string += "#40 fpu_op <= " + str(fpu_op) + ";\n"
        return_string += "opa <= 32'h" + opa + ";\n"
        return_string += "opb <= 32'h" + opb + ";\n\n"

    return_string += "end\n"
    return return_string



def generate_16(test_vectors):
    return_string = "always #" +  str(len(test_vectors) * 30 + 50*len(test_vectors) + 1000 ) + " $finish;\n"
    return_string += "initial begin\n"
    for vector in test_vectors:

        opa = nc.convert_64(vector[0])[2:] # the 2:0 gets rid of the 0x part
        opb = nc.convert_64(vector[1])[2:]

        if opa[-1] == "L":
            opa = opa[:-1]

        if opb[-1] == "L":
            opb = opb[:-1]


        fpu_op = vector[2]
        return_string += "#40 fpu_op <= " + str(fpu_op) + ";\n"
        return_string += "opa <= 16'h" + opa + ";\n"
        return_string += "opb <= 16'h" + opb + ";\n\n"

    return_string += "end\n"
    return return_string

def generate_test_code(num_test_cases):
    # Generate test vectors for each cpu
    tv_64 = test_64(num_test_cases)
    tv_32 = test_32(num_test_cases)
    tv_16 = test_16(num_test_cases)


    fmt_begin_64 = """`timescale 1ns / 100ps
    module test;

    ////////////////////////////////////////////////////////////////////////
    // Parameters
    // 64 bit = 0
    // 32 bit = 1
    // 16 bit = 2
    parameter
      FPU_TYPE = 0,
      BIT_SIZE = 16 * 2**(2 - FPU_TYPE) - 1,
      EXP_SIZE = 11 - (3*FPU_TYPE) - 1,
      MANT_SIZE = BIT_SIZE  - EXP_SIZE - 2,
      BIAS = 2**(10-(3*FPU_TYPE)) - 1;

    ////////////////////////////////////////////////////////////////////////

    initial begin
      $dumpfile("CPU_64.vcd");
      $dumpvars(0,test);
    end
    event		error_event;
    reg clk = 0;
    always #10 clk = !clk;
    reg [1:0] fpu_rmode = 0; //round to nearest even
    reg [63:0] opa, opb;
    reg [2:0] fpu_op;
    wire [63:0] out;
    wire snan, qnan, inf, ine, overflow, underflow, div_by_zero, zero;

    fpu #(.BIT_SIZE(BIT_SIZE), .EXP_SIZE(EXP_SIZE), .MANT_SIZE(MANT_SIZE), .BIAS(BIAS) ) u0(clk, fpu_rmode, fpu_op, opa, opb, out, snan, qnan, inf, ine, overflow, underflow, div_by_zero, zero);

    """
    fmt_begin_32 = """`timescale 1ns / 100ps
    module test;

    ////////////////////////////////////////////////////////////////////////
    // Parameters
    // 64 bit = 0
    // 32 bit = 1
    // 16 bit = 2
    parameter
      FPU_TYPE = 1,
      BIT_SIZE = 16 * 2**(2 - FPU_TYPE) - 1,
      EXP_SIZE = 11 - (3*FPU_TYPE) - 1,
      MANT_SIZE = BIT_SIZE  - EXP_SIZE - 2,
      BIAS = 2**(10-(3*FPU_TYPE)) - 1;

    ////////////////////////////////////////////////////////////////////////

    initial begin
      $dumpfile("CPU_32.vcd");
      $dumpvars(0,test);
    end
    event		error_event;
    reg clk = 0;
    always #10 clk = !clk;
    reg [1:0] fpu_rmode = 0; //round to nearest even
    reg [31:0] opa, opb;
    reg [2:0] fpu_op;
    wire [31:0] out;
    wire snan, qnan, inf, ine, overflow, underflow, div_by_zero, zero;

    fpu #(.BIT_SIZE(BIT_SIZE), .EXP_SIZE(EXP_SIZE), .MANT_SIZE(MANT_SIZE), .BIAS(BIAS) ) u0(clk, fpu_rmode, fpu_op, opa, opb, out, snan, qnan, inf, ine, overflow, underflow, div_by_zero, zero);

    """
    fmt_begin_16 = """`timescale 1ns / 100ps
    module test;

    ////////////////////////////////////////////////////////////////////////
    // Parameters
    // 64 bit = 0
    // 32 bit = 1
    // 16 bit = 2
    parameter
      FPU_TYPE = 2,
      BIT_SIZE = 16 * 2**(2 - FPU_TYPE) - 1,
      EXP_SIZE = 11 - (3*FPU_TYPE) - 1,
      MANT_SIZE = BIT_SIZE  - EXP_SIZE - 2,
      BIAS = 2**(10-(3*FPU_TYPE)) - 1;

    ////////////////////////////////////////////////////////////////////////

    initial begin
      $dumpfile("CPU_16.vcd");
      $dumpvars(0,test);
    end
    event		error_event;
    reg clk = 0;
    always #10 clk = !clk;
    reg [1:0] fpu_rmode = 0; //round to nearest even
    reg [15:0] opa, opb;
    reg [2:0] fpu_op;
    wire [15:0] out;
    wire snan, qnan, inf, ine, overflow, underflow, div_by_zero, zero;

    fpu #(.BIT_SIZE(BIT_SIZE), .EXP_SIZE(EXP_SIZE), .MANT_SIZE(MANT_SIZE), .BIAS(BIAS) ) u0(clk, fpu_rmode, fpu_op, opa, opb, out, snan, qnan, inf, ine, overflow, underflow, div_by_zero, zero);

    """
    fmt_end = """endmodule"""


    vtests_64 = generate_64(tv_64)
    vtests_32 = generate_32(tv_32)
    vtests_16 = generate_16(tv_16)


    tb_64 = fmt_begin_64 + vtests_64 + fmt_end
    tb_32 = fmt_begin_32 + vtests_32 + fmt_end
    tb_16 = fmt_begin_16 + vtests_16 + fmt_end



    results = []

    for i in range(0, num_test_cases):
        results.append(nc.convert_32(tv_32[i][-1]))

    print results

    f = open("gencode_test_64.v", "w")
    f.write(tb_64)
    f.close()

    f1 = open("gencode_test_32.v", "w")
    f1.write(tb_32)
    f1.close()


    f2 = open("gencode_test_16.v", "w")
    f2.write(tb_16)
    f2.close()

def main():
    generate_test_code(int(argv[1]))
    return
main()
