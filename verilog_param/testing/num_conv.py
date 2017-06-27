from sys import argv
from ast import literal_eval
import numpy as np
import struct




def convert_64(num):
    x = np.float64(num)
    x = x.tobytes()
    byte_form = struct.unpack("Q" , x)
    byte_form = byte_form[0]
    return hex(byte_form)

def convert_32(num):
    x = np.float32(num)
    x = x.tobytes()
    byte_form = struct.unpack("I" , x)
    byte_form = byte_form[0]
    return hex(byte_form)

def convert_16(num):
    x = np.float16(num)
    x = x.tobytes()
    byte_form = struct.unpack("H" , x)
    byte_form = byte_form[0]
    #binary = '{:016b}'.format(byte_form)
    return hex(byte_form)

def convert_from_64(hex_string):
    int_representation = literal_eval(hex_string)
    byte_form = struct.pack("Q", int_representation)
    converted = np.fromstring(byte_form, dtype = np.float64)[0]
    return converted

def convert_from_32(hex_string):
    int_representation = literal_eval(hex_string)
    byte_form = struct.pack("I", int_representation)
    converted = np.fromstring(byte_form, dtype = np.float32)[0]
    return converted

def convert_from_16(hex_string):
    int_representation = literal_eval(hex_string)
    byte_form = struct.pack("H", int_representation)
    converted = np.fromstring(byte_form, dtype = np.float16)[0]
    return converted

def main():
    num = argv[1];
    #print convert_32(-20)

    n64 = convert_64(num)
    n32 = convert_32(num)
    n16 = convert_16(num)

    c64 = convert_from_64(n64)
    c32 = convert_from_32(n32)
    c16 = convert_from_16(n16)

    print "Number: %s" % num
    print "Double: %s" % n64
    print "Single: %s" % n32
    print "Half  : %s\n" % n16
    #print "Double Precision : %s\n Single Precision : %x\n Half Precision : %x" % convert_64(num), convert_32(num), convert_16(num)

    print "Converted Back: "
    print "Double: %s" % c64
    print "Single: %s" % c32
    print "Half  : %s" % c16




if __name__ == "__main__":
    main()
