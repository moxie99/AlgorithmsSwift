// Question: Given a string s and a character letter, return the percentage of characters in s that equal letter rounded down to the nearest whole percent.

class Solution {
    func percentageLetter(_ s: String, _ letter: Character) -> Int {
        var denom = s.count
        var count = 0
        s.forEach { _letter in
            if _letter == letter {
                count += 1
            }
        }
        return Int(Double(count) / Double(denom) * 100)
    }
}