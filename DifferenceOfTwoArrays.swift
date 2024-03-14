// Question: Given two 0-indexed integer arrays nums1 and nums2, return a list answer of size 2 where:

// answer[0] is a list of all distinct integers in nums1 which are not present in nums2.
// answer[1] is a list of all distinct integers in nums2 which are not present in nums1.
// Note that the integers in the lists may be returned in any order.


class Solution {
    func findDifference(_ nums1: [Int], _ nums2: [Int]) -> [[Int]] {
        var uniqueArrOne = [Int]()
        var uniqueArrTwo = [Int]()
        var unqueArrs = [[Int]]()

        for num in nums1 {
            if !nums2.contains(num) {
                uniqueArrOne.append(num)
            }
        }
         for nums in nums2 {
                if !nums1.contains(nums) {
                    uniqueArrTwo.append(nums)
                }
            }
        var newSet1 = Set(uniqueArrOne)
        var newSet2 = Set(uniqueArrTwo)
        unqueArrs.append(Array(newSet1))
        unqueArrs.append(Array(newSet2))

        return unqueArrs
    }
}