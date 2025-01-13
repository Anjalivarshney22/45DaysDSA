class Solution {
    public long maxKelements(int[] nums, int k) {
         PriorityQueue<Integer> pq=new PriorityQueue<>(Collections.reverseOrder());
        for(int pile:nums){
            pq.add(pile);
        }
        long sum=0;
        for(int i=0;i<k;i++){
            int x=pq.poll();
            sum+=x;
            pq.add((int)Math.ceil((x/3.0)));
        }
         return sum;
        
     
    }

    }
