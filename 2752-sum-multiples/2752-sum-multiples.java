class Solution {
    public int sumOfMultiples(int n) {
        int sum = 0;
        sum += 3 *((n/3)*((n/3)+1))/2;
        sum += 5 *((n/5)*((n/5)+1))/2;
        sum += 7 *((n/7)*((n/7)+1))/2;
        sum -= 15*((n/15)*((n/15)+1))/2;
        sum -= 21*((n/21)*((n/21)+1))/2;
        sum -= 35*((n/35)*((n/35)+1))/2;
        sum += 105*((n/105)*((n/105)+1))/2;
        return sum;
    }
}