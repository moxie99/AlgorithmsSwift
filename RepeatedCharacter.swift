// Question:
// Given a string s consisting of lowercase English letters, return the first letter to appear twice.

// Note:

// A letter a appears twice before another letter b if the second occurrence of a is before the second occurrence of b.
// s will contain at least one letter that appears twice.


func repeatedCharacter(_ s: String) -> Character? {
        var value = ""
        var firstToFind: Character?
        for (_, element) in s.enumerated() {
            if !value.contains(element) {
                value.append(element)
            } else {
                firstToFind = element
                break
            }
        }
        return firstToFind
    }

var result = repeatedCharacter("Addccffsfgdhj")
if let repeatedChar = result {
    print("The first repeated character is: \(repeatedChar)")
} else {
    print("No repeated character found.")
}