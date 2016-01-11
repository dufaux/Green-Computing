from datetime import *
import time
import sys

def hanoi(disk_number, start, end, intermediate):
	if disk_number is not 0:
		hanoi(disk_number-1, start, intermediate, end)
		#print("moving disk n'%d from %d to %d\n", int(disk_number), int(start), int(end))
		hanoi(disk_number-1, intermediate, end, start)


start_time = time.time()
#print("sys.argv[1] = ",int(sys.argv[1]));
hanoi(int(sys.argv[1]),0,2,1)
print("--- %s seconds ---" % (time.time() - start_time))
