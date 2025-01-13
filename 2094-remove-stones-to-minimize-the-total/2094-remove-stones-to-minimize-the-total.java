class Solution {
    public int minStoneSum(int[] piles, int k) {
        PriorityQueue<Integer> pq=new PriorityQueue<>(Collections.reverseOrder());
        for(int pile:piles){
            pq.add(pile);
        }
        for(int i=0;i<k;i++){
            int x=pq.poll();
            pq.add(x-(x/2));
        }
        int sum=0;
        while(!pq.isEmpty()){
            int x=pq.poll();
            sum+=x;
        }
        return sum;
        
     
    }
}