class Solution {
    public int maxArea(int[] height) {
        int start=0;
        int end=height.length-1;
        int Max=Integer.MIN_VALUE;
        while(start<=end){
            int min=Math.min(height[start],height[end]);
            int curr_water=min*(end-start);
            Max=Math.max(Max,curr_water);
            if(height[start]<height[end]){
                start++;
            }
            else{
                end--;
            }

        }
        return Max;

        
    }
}