/*
 Consider a staircase of size n = 4:
    #
   ##
  ###
 ####
 
 Observe that its base and height are both equal to n , and the image is drawn using # symbols and spaces. The last line is not preceded by any spaces.

 Write a program that prints a staircase of size n.
 
 
*/

import UIKit

class Solution {
    func staircase(n: Int) -> Void {
        let space = Character(" ")
        if n > 0 && n <= 100 {
            for i in 1...n {
                let string = String(repeating: "#", count: i)
                let x = String(repeating: space, count: n - i)
                
                print (x + string)
            }
        }
    }
}

let exmp = Solution()
exmp.staircase(n: 5)
