// Question: You are given a string s, where every two consecutive vertical bars '|' are grouped into a pair. In other words, the 1st and 2nd '|' make a pair, the 3rd and 4th '|' make a pair, and so forth.

// Return the number of '*' in s, excluding the '*' between each pair of '|'.

// Note that each '|' will belong to exactly one pair.

class Solution {
    func countAsterisks(_ s: String) -> Int {
        var pipeCount = 0
        var consiArsteriskCount = 0
        if !s.contains("*") {
            return 0
        }
        for el in s {
            if el == "|" {
                pipeCount += 1
            } else {
                if el == "*" && pipeCount % 2 == 0 {
                    consiArsteriskCount += 1
                }
            }
        }
        return consiArsteriskCount
    }
}