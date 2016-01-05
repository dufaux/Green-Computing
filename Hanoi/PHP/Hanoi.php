<?php 
$time_start = microtime(true); 

function hanoi($topN, $from, $to, $inter){
    if($topN != 0){
        hanoi($topN -1, $from, $inter, $to);
        //echo "Moving Disk  $topN from $from to $to \n";
        hanoi($topN -1, $inter, $to, $from);
    }
}

$nDisks = $argv[1];
hanoi($nDisks, "Depart(0)", "Arrivee(2)", "Milieu(1)");
      

$time_end = microtime(true);
(int)$execution_time = (int)(($time_end - $time_start) * 1000);
echo "execution time : ${execution_time}ms \n"
?>
