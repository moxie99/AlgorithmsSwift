// Question: 
// you are given an array of strings sentences, where each sentences[i] represents a single sentence.

// Return the maximum number of words that appear in a single sentence.



// Solution

class Solution {
    func mostWordsFound(_ sentences: [String]) -> Int {
        let wordCounts = sentences.map { $0.components(separatedBy: " ").count }
        return wordCounts.max() ?? 0
    }
}


class Solution {
    func mostWordsFound(_ sentences: [String]) -> Int {
        var lenArr = [Int]()
         for sentence in sentences {
            let count = sentence.components(separatedBy: " ").count 
            lenArr.append(count)  
         }
         print(lenArr)
        return lenArr.max() ?? 0 
    }
}