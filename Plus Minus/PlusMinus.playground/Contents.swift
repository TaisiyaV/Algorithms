/*
Given an array of integers, calculate the ratios of its elements that are positive, negative, and zero. Print the decimal value of each fraction on a new line with  places after the decimal.
 
 Example
 arr = [1, 1, 0, -1, -1]
 There are n=5 elements, two positive, two negative and one zero. Their ratios are 2/5 = 0.400000 , 2/5 = 0.400000 and 1/5 = 0.200000.

 */


class Solution {
    
    func plusMinus(arr: [Int]) -> Void {
        var p = 0
        var m = 0
        var z = 0
        
        for i in arr {
            if i > 0 {
                p += 1
            } else if i < 0 {
                m += 1
            } else {
                z += 1
            }
        }
      
        print(Double(p)/Double(arr.count))
        print(Double(m)/Double(arr.count))
        print(Double(z)/Double(arr.count))
        
    }
}

let exmp = Solution()
exmp.plusMinus(arr: [1, 1, 0, -1, -1])
