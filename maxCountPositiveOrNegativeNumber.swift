// Question: Given an array nums sorted in non-decreasing order, return the maximum between the number of positive integers and the number of negative integers.

// In other words, if the number of positive integers in nums is pos and the number of negative integers is neg, then return the maximum of pos and neg.
// Note that 0 is neither positive nor negative.

class Solution {
    func maximumCount(_ nums: [Int]) -> Int {
        var negativeCount = 0
        var positiveCount = 0

        for num in nums {
            if num < 0 {
                negativeCount += 1
            } else if num > 0 {
                positiveCount += 1
            }
        }
       var valueArr: [Int] = [negativeCount, positiveCount]
       return valueArr.max() ?? 0
    }
}