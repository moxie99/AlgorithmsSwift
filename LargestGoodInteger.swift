// Question:
// You are given a string num representing a large integer. An integer is good if it meets the following conditions:

// It is a substring of num with length 3.
// It consists of only one unique digit.
// Return the maximum good integer as a string or an empty string "" if no such integer exists.

// Note:

// A substring is a contiguous sequence of characters within a string.
// There may be leading zeroes in num or a good integer.

// Mine
class Solution {
    func largestGoodInteger(_ num: String) -> String {
        
        var arrNum = [Int]()
        var numArr = num.map { String($0)}
        for i in 0..<numArr.count - 2 {
            var str = numArr[i]
            var str2 = numArr[i + 1]
            var str3 = numArr[i + 2]
            if str == str2 && str2 == str3 {
                var strInterpolate = "\(str)\(str2)\(str3)"
                if let numStr = Int(strInterpolate) {
                    arrNum.append(numStr)
                }
            }
        }
        if arrNum.isEmpty {
            return ""
        } else {
            if let maxNum = arrNum.max() {
                if String(maxNum).count < 2 {
                   let maxNumInterp = "\(maxNum)\(maxNum)\(maxNum)"
                   return maxNumInterp
                } else {
                    return String(maxNum)
                }
                
            } else {
                return ""
            }
        }
    }
}

// ChatGPT

class Solution {
    func largestGoodInteger(_ num: String) -> String {
        var arrNum = [Int]()
        let numArr = Array(num)
        for i in 0..<numArr.count - 2 {
            if numArr[i] == numArr[i + 1] && numArr[i + 1] == numArr[i + 2] {
                if let numStr = Int(String(numArr[i]) + String(numArr[i + 1]) + String(numArr[i + 2])) {
                    arrNum.append(numStr)
                }
            }
        }
        
        guard !arrNum.isEmpty else {
            return ""
        }
        
        let maxNum = arrNum.max()!
        if String(maxNum).count < 2 {
            return "\(maxNum)\(maxNum)\(maxNum)"
        } else {
            return String(maxNum)
        }
    }
}
