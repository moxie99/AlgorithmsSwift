// Question
// Given an array of strings words, return the first palindromic string in the array. If there is no such string, return an empty string "".

// A string is palindromic if it reads the same forward and backward.


class Solution {
    func firstPalindrome(_ words: [String]) -> String {
        for word in words {
            if String(word.reversed()) == word {
                return word
            }
        }
        return ""
    }
}