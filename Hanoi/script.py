import sys
import os
import subprocess

for dirname, dirnames, filenames in os.walk('.'):
    # print path to all subdirectories first.
    for subdirname in dirnames:
        print(os.path.join(dirname, subdirname))

    # print path to all filenames.
    for filename in filenames:
        if "c.sh" in filename:
            subprocess.Popen(os.path.join(dirname, filename))
        print(os.path.join(dirname, filename))

    # Advanced usage:
    # editing the 'dirnames' list will stop os.walk() from recursing into there.
    if '.git' in dirnames:
        # don't go into any .git directories.
        dirnames.remove('.git')


input_file = open(sys.argv[1], 'r')
output_file = open(sys.argv[1] + ".processed", "w")
t0 = ""

output_file.write(sys.argv[1].split("_")[2].split(".")[0] + ";" + "-" +";\n")

for line in input_file:
    if t0 == "" :
        t0 = int(line.split(";")[1].split("=")[1])
    t1 = int(line.split(";")[1].split("=")[1])
    tf = t1 - t0
    power_consumption = line.split(";")[4].split("=")[1].split(" ")[0]
    if power_consumption != "0.0":
        output_file.write(str(tf) + ";" + power_consumption +";\n")
