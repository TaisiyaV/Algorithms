// https://www.hackerrank.com/challenges/kangaroo/problem

/*
 You are choreographing a circus show with various animals. For one act,
    you are given two kangaroos on a number line ready to jump in
    the positive direction (i.e, toward positive infinity).

 The first kangaroo starts at location x1 and moves at a rate of v1 meters per jump.
 The second kangaroo starts at location x2 and moves at a rate of v2 meters per jump.
 You have to figure out a way to get both kangaroos at the same location at the same time
    as part of the show. If it is possible, return YES, otherwise return NO.

 For example, kangaroo 1 starts at x1 = 2 with a jump distance v1 = 1 and kangaroo 2 starts at x2 = 1 with a jump distance of v2 = 2. After one jump, they are both at x = 3, (x1 + v1 = 2+1, x2 + v2 = 1+2), so our answer is YES.

 Function Description

 Complete the function kangaroo in the editor below. It should return YES if they reach
    the same position at the same time, or NO if they don't.

 kangaroo has the following parameter(s):

 x1, v1: integers, starting position and jump distance for kangaroo 1
 x2, v2: integers, starting position and jump distance for kangaroo 2
 */


import UIKit

class Solution {
    func kangaroo(x1: Int, v1: Int, x2: Int, v2: Int) -> String {
        let speedDiff = v2 - v1
        let distanceDiff = x2 - x1
        
        //если начинают в одной точке с одинаковой скоростью
        if speedDiff == 0 && distanceDiff == 0 { return "YES"}
        
        //если кто-то стоит впереди и прыгает дальше, или наоборот, если он стоит позади и прыгает короче
        guard speedDiff * distanceDiff < 0 else { return "NO"}
        
        //один будет догонять другого
        return (distanceDiff % speedDiff) == 0 ? "YES" : "NO"
    
    }
}

let exmp = Solution()
exmp.kangaroo(x1: 0, v1: 3, x2: 4, v2: 2)
