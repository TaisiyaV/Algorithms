/*
 https://www.codewars.com/kata/5168bb5dfe9a00b126000018/train/swift
 */


import UIKit

class Solution {
    func reverse(_ str: String) -> String {
        
//        let reversed = String(str.reversed())
//        return String(str.reversed())
        
        var reverse = ""
        for char in str {
            let asString = "\(char)"
            reverse = asString + reverse
        }        
        return reverse
    }
}

let example = Solution()
example.reverse("Hello")
