from datetime import *
import time


def hanoi(disk_number, start, end, intermediate):
	if disk_number is not 0:
		hanoi(disk_number-1, start, intermediate, end)
		# print("moving disk n°%d from %d to %d\n", disk_number, start, end)
		hanoi(disk_number-1, intermediate, end, start)


start_time = time.time()
hanoi(30,0,2,1)
print("--- %s seconds ---" % (time.time() - start_time))