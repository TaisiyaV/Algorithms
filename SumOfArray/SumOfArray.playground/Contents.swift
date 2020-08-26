//Given an array nums. We define a running sum of an array as runningSum[i] = sum(nums[0]…nums[i]).

//Return the running sum of nums.

import UIKit

class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        var array: [Int] = []
        var sum = 0
        for i in nums {
            sum += i
            array.append(sum)
        }
        return array
    }
}

let exp = Solution()
exp.runningSum([1, 2, 3, 4])
let exp1 = Solution()
exp1.runningSum([1, 1, 1, 1, 1])
