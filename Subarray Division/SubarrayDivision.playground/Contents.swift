//  https://www.hackerrank.com/challenges/the-birthday-bar/problem

import UIKit

class Solution {
    
    func birthday(s: [Int], d: Int, m: Int) -> Int {
        var count = 0
        
        for (i, _) in s[0...s.count-m].enumerated() {
            var sum = 0
            for j in 0..<m {
                sum += s[i+j]
            }
            if sum == d {
                count += 1
            }
        }
        
        return count
    }
}


let example = Solution()
example.birthday(s: [2, 2, 1, 3, 2], d: 4, m: 2)
