// https://www.hackerrank.com/challenges/divisible-sum-pairs/problem



import UIKit

class Solution {
    
    func divisibleSumPairs (n: Int, k: Int, ar: [Int]) -> Int {
        var result = 0
        
        for i in 0...ar.count-2 {
            for j in i + 1...ar.count - 1 {
                if (ar[i] + ar[j]) % k == 0 {
                    result += 1
                }
            }
        }
        return result
    }
}


let example = Solution()
example.divisibleSumPairs(n: 6, k: 3, ar: [1, 3, 2, 6, 1, 2])
