from sys import argv
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




def main():
    num = argv[1];
    #print convert_32(-20)

    n64 = convert_64(num)
    n32 = convert_32(num)
    n16 = convert_16(num)

    print "Number: %s" % num
    print "Double: %s" % n64
    print "Single: %s" % n32
    print "Half  : %s" % n16
    #print "Double Precision : %s\n Single Precision : %x\n Half Precision : %x" % convert_64(num), convert_32(num), convert_16(num)



if __name__ == "__main__":
    main()
