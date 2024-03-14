// // Question:You are given a 0-indexed string num of length n consisting of digits.

// Return true if for every index i in the range 0 <= i < n, the digit i occurs num[i] times in num, otherwise return false.

 

// Example 1:

// Input: num = "1210"
// Output: true
// Explanation:
// num[0] = '1'. The digit 0 occurs once in num.
// num[1] = '2'. The digit 1 occurs twice in num.
// num[2] = '1'. The digit 2 occurs once in num.
// num[3] = '0'. The digit 3 occurs zero times in num.
// The condition holds true for every index in "1210", so return true.


class Solution {
    func digitCount(_ num: String) -> Bool {
        var boolArr = [Bool]()
        var numArr = Array(num)
        for (index, element) in numArr.enumerated() {
            var count = 0
            for fig in num {
                if Character(String(index)) == fig {
                    count += 1
                }
            }
            if count == Int(String(element)) {
                boolArr.append(true)
            }
        }
        print(boolArr)
        return boolArr.count == num.count
    }
}