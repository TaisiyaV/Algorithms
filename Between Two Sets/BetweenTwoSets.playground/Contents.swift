//https://www.hackerrank.com/challenges/between-two-sets/problem

/*
 There will be two arrays of integers. Determine all integers that satisfy the following two conditions:

 1. The elements of the first array are all factors of the integer being considered
 2. The integer being considered is a factor of all elements of the second array
 These numbers are referred to as being between the two arrays.
 Determine how many such numbers exist.

 Example
 a = [2, 6]
 b = [24, 36]
 
 There are two numbers between the arrays: 6 and 12.
 6%2 = 0, 6%6 = 0, 24%6 = 0 and 36%6 = 0 for the first value.
 12%2 = 0, 12%6 = 0 and 24%12 = 0, 36%12 = 0 for the second value. Return 2.
 */


import UIKit

class Solution {
    func getTotalX(a: [Int], b: [Int]) -> Int {
        guard let maxA = a.max(), let minB = b.min(), minB >= maxA else { return 0 }
        let items = Array(maxA...minB)
        
        return items.filter { (item) -> Bool in
            let modA = a.map { item % $0 }.reduce(0, +)
            let modB = b.map { $0 % item }.reduce(0, +)
            
            return (modA + modB) == 0
        }.count
    }
}

let example = Solution()
example.getTotalX(a: [2, 6], b: [24, 36])
