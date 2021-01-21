// https://www.hackerrank.com/challenges/migratory-birds/problem


import UIKit

class Solution {
    func migratoryBirds(arr: [Int]) -> Int {
        var count = [(1,0), (2,0), (3,0), (4,0), (5,0)]
        for i in arr {
            count[i-1].1 += 1
        }
        
        return count.sorted(by: {$0.1 > $1.1})[0].0
    }

}

let example = Solution()
example.migratoryBirds(arr: [1, 2, 3, 4, 5, 4, 3, 2, 1, 3, 4])
