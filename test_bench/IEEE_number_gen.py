from sys import argv
import struct
import random


def main():
    """
    This program takes two inputs, an op code and a number.
    OP Codes
    1 - Convert number to IEEE
    2 - Generate n random IEEE numbers and display them next to their decimal counterpart
    3 - Generates and converts n random numbers and save them to a file
    """
    if len(argv) < 3 or len(argv) > 4:
        print "Usage: op num <file>"

    op = argv[1]
    num = argv[2]

    if op == "0":
        print IEEE_convert(num)

    if op == "1": # Basic Conversion
        print "number %s\t converstion %s" % (num, IEEE_convert(num))


    if op == "2": # Generate and convert n random numbers
        numbers = generate_random(int(num))
        print "Number\tConversion"
        for i in range(0, int(num)):
            print "%s\t%s" % (numbers[i][0], numbers[i][1])

    if op == "3":
        if len(argv) != 4:
            print "Invalid Filename"
        filename = argv[3]
        f = open(filename, "w+")
        numbers = generate_random(int(num))
        for i in range(0, int(num)):
            f.write("%s, %s\n" % (numbers[i][0], numbers[i][1]))
        f.close()




def float_convert(input_hex):
    s = int(input_hex)
    s = (struct.pack('>l', s))
    return (struct.unpack('>f', s)[0])



def IEEE_convert(input_number):
    input_number = float(input_number)
    s = struct.pack('>f', input_number)
    return hex(struct.unpack('>l', s)[0])

def generate_random(n):
    random_numbers = []
    for i in range(0, n): # Where n is the number of random numbers
        rnum = random.getrandbits(32)
        random_numbers.append((rnum, IEEE_convert(rnum)))
    return random_numbers






if __name__ == "__main__":
    main()
