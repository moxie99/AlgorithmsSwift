// Question:
// Given four integers length, width, height, and mass, representing the dimensions and mass of a box, respectively, return a string representing the category of the box.

// The box is "Bulky" if:
// Any of the dimensions of the box is greater or equal to 104.
// Or, the volume of the box is greater or equal to 109.
// If the mass of the box is greater or equal to 100, it is "Heavy".
// If the box is both "Bulky" and "Heavy", then its category is "Both".
// If the box is neither "Bulky" nor "Heavy", then its category is "Neither".
// If the box is "Bulky" but not "Heavy", then its category is "Bulky".
// If the box is "Heavy" but not "Bulky", then its category is "Heavy".
// Note that the volume of the box is the product of its length, width and height.

class Solution {
    func categorizeBox(_ length: Int, _ width: Int, _ height: Int, _ mass: Int) -> String {
        var volume = length * width * height
        var isBulky = volume >= 1000000000 || length >= 10000 || width >= 10000 || height >= 10000 || mass >= 10000 
        var isHeavy = mass >= 100
        var output = ""
        
        if isBulky && isHeavy {
            output = "Both"
        } else if isBulky && !isHeavy {
            output = "Bulky"
        }else if isHeavy && !isBulky {
            output = "Heavy"
        }
        else  {
            output = "Neither"
        }

        return output
    }
}