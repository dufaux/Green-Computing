
hanoi () {
  local topN=$1
  local from=$2
  local to=$3
  local inter=$4
  #echo $topN
  if [ $topN -ne 0 ]; then
    #hanoi $(($topN-1)) $from $inter $to
     hanoi $(($1-1)) $2 $4 $3
    #echo "Moving Disk $topN from $from to $to";
    #hanoi $(($topN-1)) $inter $to $from
     hanoi $(($1-1)) $4 $3 $2
  fi
}

start_time=$(($(date +%s%N)/1000000))
hanoi $1 "Depart(0)" "Arrivee(2)" "Milieu(1)"
end_time=$(($(date +%s%N)/1000000))
echo execution time : `expr $end_time - $start_time` ms.
