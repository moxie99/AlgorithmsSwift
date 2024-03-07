// Question:
// Given a positive integer num, return the number of positive integers less than or equal to num whose digit sums are even.

// The digit sum of a positive integer is the sum of all its digits.



class Solution {
    func countEven(_ num: Int) -> Int {
        var count = 0
        for i in 1...num {
            var intStringVal = String(i)
            var value = 0
            for figure in intStringVal {
                if let myNum = Int(String(figure)) {
                    value += myNum
                }
            }
            if value % 2 == 0 {
                count += 1
            }
        }
        return count
    }
}