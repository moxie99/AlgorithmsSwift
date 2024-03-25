// Question: Given an integer num, return the number of digits in num that divide num.

// An integer val divides nums if nums % val == 0.

 

// Example 1:

// Input: num = 7
// Output: 1
// Explanation: 7 divides itself, hence the answer is 1.
// Example 2:

// Input: num = 121
// Output: 2
// Explanation: 121 is divisible by 1, but not 2. Since 1 occurs twice as a digit, we return 2.

class Solution {
    func countDigits(_ num: Int) -> Int {
        var factorCount = 0
        var numberString = String(num)
        for figure in numberString {
            var divisor = Int(String(figure)) ?? 0
            if divisor != 0 && num % divisor == 0 {
                factorCount += 1
            }
        }
        return factorCount
    }
}