// Question:
// You are given a string array words and a string s, where words[i] and s comprise only of lowercase English letters.

// Return the number of strings in words that are a prefix of s.

// A prefix of a string is a substring that occurs at the beginning of the string. A substring is a contiguous sequence of characters within a string.


// Mine

class Solution {
    func countPrefixes(_ words: [String], _ s: String) -> Int {
        var count = 0
        words.forEach {prefix in 
            if s.hasPrefix(prefix) {
                count += 1
            }
        }
        return count
    }
}

// ChatGPT

class Solution {
    func countPrefixes(_ words: [String], _ s: String) -> Int {
        var count = 0
        for word in words {
            if s.hasPrefix(word) {
                count += 1
            }
        }
        return count
    }
}

