from sys import argv
from os import system

def main():
	fpu_32 = "32bit/fpu.v"
	fpu_64 = "64bit/fpu.v"
	
	if len(argv) != 2:
		print "Usage: python run.py <bit size>"
		return

	bit_size = int(argv[1])
	if (bit_size == 64):
		fpu = fpu_64
	elif (bit_size == 32):
		fpu = fpu_32
	elif (bit_size == 16):
		fpu = fpu_16

	command = "vcs -full64 -pvalue+BIT_SIZE=%d tb.v %s lib/*.v reg_acc.c -P reg_acc.tab -o sim.out +v2k +define+TOP=tb +neg_tchk +sdfverbose" % (bit_size,fpu)
	
	system(command)
	system("./sim.out")
main()
	
