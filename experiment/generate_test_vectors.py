import num_conv
from random import getrandbits
from random import choice
from sys import argv

def generate_test_vectors(bit_size, num_test_cases):
    operators = [0, 1, 2]
    operations = []

    for i in range(0, num_test_cases):
        rbitsa = (getrandbits(bit_size))
        rbitsb = (getrandbits(bit_size))

        if bit_size == 64:
            opa = num_conv.convert_from_64(hex(rbitsa))
            opb = num_conv.convert_from_64(hex(rbitsb))
        elif bit_size == 32:
            opa = num_conv.convert_from_32(hex(rbitsa))
            opb = num_conv.convert_from_32(hex(rbitsb))
        elif bit_size == 16:
            opa = num_conv.convert_from_16(hex(rbitsa))
            opb = num_conv.convert_from_16(hex(rbitsb))
        else:
            print "Invalid Bit Size"
            exit(1)


        op = choice(operators)

        if op == 0:
            result = opa + opb
        elif op == 1:
            result = opa - opb
        elif op == 2:
            result = opa * opb
        else:
            result = opa/opb

        if bit_size == 64:
            result = num_conv.convert_64(result)

        elif bit_size == 32:
            result = num_conv.convert_32(result)

        elif bit_size == 16:
            result = num_conv.convert_16(result)


        packaged = (result,rbitsa,rbitsb,op)
        operations.append(packaged)

    return operations


def main():
    if len(argv) != 3:
        print "usage: python generate_test_vectors.py <bit_size> <num_test_cases>"
        return


    bit_size,num_test_cases = argv[1:]

    test_vectors = generate_test_vectors(int(bit_size), int(num_test_cases))

    result_filename = "results/BIT_" + bit_size + ".results"
    vector_file = "vectors/BIT_" + bit_size + ".testvector"

    rfile = open(result_filename, "w")
    vfile = open(vector_file, "w")

    for vector in test_vectors:
        rfile.write(vector[0])
	rfile.write("\n")
        formatted = "%d %d %d\n" % (vector[1],vector[2],vector[3])
        vfile.write(formatted)

    rfile.close()
    vfile.close()


if __name__ == "__main__":
    main()
