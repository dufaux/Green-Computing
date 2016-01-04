import sys

input_file = open(sys.argv[1], 'r')
output_file = open(sys.argv[1] + ".processed", "w")
t0 = ""

for line in input_file:
	if t0 == "" :
		t0 = int(line.split(";")[1].split("=")[1])
	t1 = int(line.split(";")[1].split("=")[1])
	tf = t1 - t0
	output_file.write(str(tf) + ";" + line.split(";")[4].split("=")[1].split(" ")[0] +"\n")