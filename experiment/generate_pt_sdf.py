#!/usr/bin/python

import os
import fileinput

pt_template = 'pt-scripts/pt_template.tcl'
adders = ['hc']#['bk', 'hc', 'kn', 'ks', 'lf', 'rc', 'sk']
#configs = ['low', 'med', 'high']

infile = open(pt_template, 'r')
lines = infile.readlines()
infile.close()

for top in ['double_adders']:
	for adder in adders:
		infile = open('area_effort_med/area_freq_%s_%s.out' % (top, adder), 'r')
		tmps = infile.readlines()
		infile.close()
		freqs = []
		for tmp in tmps:
			freqs.append(tmp.split()[0])
		for freq in freqs:
			outFile = open('./pt-scripts/%s_%s.tcl' % (top, adder), 'w')
			for line in lines:
				if line.find('#insert read_verilog!') != -1:
					outFile.write('read_verilog %s_%s_%s.v\n' % (top, adder, freq))
				elif line.find('#insert top module!') != -1:
					outFile.write('link_design -keep_sub_designs %s' % top)
				elif line.find('#insert write_sdf!') != -1:
					outFile.write('write_sdf -version 2.1 -no_edge -no_timing_checks -context Verilog %s_%s_%s.sdf' % (top, adder, freq))
				else:
					outFile.write(line)
			outFile.close()

			os.system('pt_shell -f ./pt-scripts/%s_%s.tcl' % (top, adder))
			os.system('mv %s_%s_%s.sdf sdf/' % (top, adder, freq))

