#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <unistd.h>


void hanoi(int disk_number, int start, int end, int intermediate){
	if(disk_number != 0){
		hanoi(disk_number-1, start, intermediate, end);
		// printf("moving disk n°%d from %d to %d\n", disk_number, start, end);
		hanoi(disk_number-1, intermediate, end, start);
	}

}

void main(){
	// int error;
	// printf("%d\n", getpid());
	// error = system("powerapi/bin/powerapi 84 " + getpid());
	// printf("%d\n", error);
	// clock_t start = clock(), diff;
	hanoi(33, 0, 2, 1);
	// diff = clock() - start;
	// int msec = diff * 1000 / CLOCKS_PER_SEC;
	// printf("Time taken %d seconds %d milliseconds\n", msec/1000, msec%1000);
	}