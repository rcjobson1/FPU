from sys import argv
from subprocess import call

def generate_tests(num_tests, increment, start_freq = 1000):
	#open file, change line, save as new file, increment
	freq = start_freq
	
	for i in range(0, num_tests):	
		print("Creating test ", i+1)	
		text = open("user_cfg.tcl", "r").readlines()
		text[83] = "set default_clk_freq " + str(freq) + "\n"
		
		filename = "../user_cfg.tcl"
		f = open(filename,"w")
		f.writelines(text)
		f.close()


		print("Running dc_shell")
		call("dc_shell","-f","run.tcl")
		print("dc_shell completed")
		

		fpu_filename = "build/fpu_flat_" + str(freq) + ".v"
	
		call("mv", "gate/fpu_flat.v)", fpu_filename)	
		
		# Move 
		freq+= increment



def main():
	if (len(argv) < 3 or len(argv) > 4):
		print("usage: python generate_tests.py <num_tests> <increment> <start_freq>")
		return 0
	num_tests = int(argv[1])
	increment = int(argv[2])
	generate_tests(num_tests, increment)
	
if __name__ == "__main__":
	main()
