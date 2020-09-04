/*
 
 Given five positive integers, find the minimum and maximum values that can be calculated by summing exactly four of the five integers.
 Then print the respective minimum and maximum values as a single line of two space-separated long integers.

 Example
 arr = [1, 3, 5, 7, 9]
 
 The minimum sum is 1+3+5+7 = 16 and the maximum sum is 3+5+7+9 = 24.
 
 The function prints:
 16 24
 
*/


import UIKit

class Solution {
    
    func miniMaxSum(arr: [Int]) -> Void {
        
        var minSum = 0
        var maxSum = 0
    
        let ascendingArr = arr.sorted()
        let descendingArr = Array(ascendingArr.reversed())
        
        for i in 1...arr.count-1 {
            maxSum += ascendingArr[i]
            minSum += descendingArr[i]
        }

        print(" \(minSum) \(maxSum)") 
    }
}

let exmp = Solution()
exmp.miniMaxSum(arr: [5, 0, 2, 9, 10])

