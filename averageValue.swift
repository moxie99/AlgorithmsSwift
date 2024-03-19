// Question:
// Given an integer array nums of positive integers, return the average value of all even integers that are divisible by 3.

// Note that the average of n elements is the sum of the n elements divided by n and rounded down to the nearest integer.

class Solution {
    func averageValue(_ nums: [Int]) -> Int {
        var total = 0
        var count = 0
        for i in nums {
            if i % 2 == 0 && i % 3 == 0 {
                total += i
                count += 1
            }
        }
        if count == 0 {
            return 0
        }
        return total / count
    }
}