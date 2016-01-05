object hanoi {
  
  def hanoi(topN:Int,from:String,to:String,inter:String){
    if(topN != 0){
      hanoi(topN-1,from,inter,to);
      //System.out.println("Moving Disk " + topN + " from " + from + " to " + to);
      hanoi(topN-1,inter,to,from);
    }
  } 
  
  def main(args: Array[String]) {
      val nDisks = args(0).toInt;
      val now = System.currentTimeMillis();
      hanoi(nDisks, "Depart(0)", "Arrivee(2)", "Milieu(1)");
      val end = (System.currentTimeMillis() - now);
      System.out.println("execution time : "+end+" ms ");
  }
}
