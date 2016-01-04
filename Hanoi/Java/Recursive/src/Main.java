public class Main {
   public static void main(String[] args) {
      int nDisks = Integer.parseInt(args[0]);
      //nDisks = 3;
      long startTime = System.currentTimeMillis();
      hanoi(nDisks, "Depart(0)", "Arrivee(2)", "Milieu(1)");
      
      long stopTime = System.currentTimeMillis();
      long elapsedTime = stopTime - startTime;
      System.out.println("execution time : " + elapsedTime + "ms");
   }
   public static void hanoi(int topN, String from, String to, String inter) {
      
      if(topN != 0){
     	 hanoi(topN - 1, from, inter, to);
         //System.out.println("Moving Disk " + topN + " from " + from + " to " + to);
         hanoi(topN - 1, inter, to, from);
      }
      
   }
}

