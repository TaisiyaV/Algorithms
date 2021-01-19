// https://www.hackerrank.com/challenges/breaking-best-and-worst-records/problem


import UIKit

class Solution {
    func breakingRecords(scores: [Int]) -> [Int] {
        var max = scores[0]
        var min = scores[0]
        var maxCount = 0
        var minCount = 0
        
        for i in 1..<scores.count {
            if scores[i] > max {
                max = scores[i]
                maxCount += 1
            } else if scores[i] < min {
                min = scores[i]
                minCount += 1
            }
        }
        
        return [maxCount, minCount]
    }
}


let example = Solution()
example.breakingRecords(scores: [10, 5, 20, 20, 4, 5, 2, 25, 1])
