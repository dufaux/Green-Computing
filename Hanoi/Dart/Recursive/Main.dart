main(List<String> args) { 

  hanoi(topN,from,to,inter) {
    if (topN>0) {
      hanoi(topN-1,from,inter,to);
      //print("Moving Disk ${topN} from ${from} to ${to}");
      hanoi(topN-1,inter,to,from);
    }
  }
  Stopwatch stopwatch = new Stopwatch()..start();
  hanoi(int.parse(args[0]),"debut","fin","milieu");
  print('doSomething() execution time : ${stopwatch.elapsed}');
}
