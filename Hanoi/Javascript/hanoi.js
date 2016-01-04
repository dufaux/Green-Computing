function hanoi(disk_number, start, end, intermediate){
	if(disk_number != 0){
		hanoi(disk_number-1, start, intermediate, end);
		// printf("moving disk n°%d from %d to %d\n", disk_number, start, end);
		hanoi(disk_number-1, intermediate, end, start);
	}
}

var start = new Date().getTime();
hanoi(30, 0,2, 1);
var end = new Date().getTime();
var time = end - start;
console.log('Execution time: ' + time + " ms");