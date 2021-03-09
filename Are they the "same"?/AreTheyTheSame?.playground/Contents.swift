// https://www.codewars.com/kata/550498447451fbbd7600041c/train/swift


import UIKit

class Solution {
    func comp(_ a: [Int], _ b: [Int]) -> Bool {
        var c = [Int]()
        
        for i in a {
            c.append(i*i)
        }
        if c.sorted() == b.sorted() {
            return true
        } else {
            return false
        }
    }
}

var example = Solution()
example.comp([121, 144, 19, 161, 19, 144, 19, 11], [121, 14641, 20736, 361, 25921, 361, 20736, 361])

var example1 = Solution()
example1.comp([], [1, 2])

