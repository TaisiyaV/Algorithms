
/*
Given a square matrix, calculate the absolute difference between the sums of its diagonals.

For example, the square matrix arr is shown below:
 
 1 2 3
 4 5 6
 9 8 9
 
 The left-to-right diagonal = 1 + 5 + 9 = 15. The right to left diagonal = 3 + 5 + 9 = 17. Their absolute difference is |15 - 17| = 2.
 
*/


class Solution {
    func diagonalDifference (arr: [[Int]]) -> Int {
        var leftD = 0
        var rightD = 0

        for (i, _) in arr.enumerated() {
            leftD += arr[i][i]

            let index = ((arr.count - 1) - i)
            rightD += arr[i][index]
        }

        return abs(leftD - rightD)
    }
}


let exmp = Solution()
exmp.diagonalDifference(arr: [[1, 2, 3], [4, 5, 6], [9, 8, 9]])
exmp.diagonalDifference(arr: [[11, 2, 4], [4, 5, 6], [10, 8, -12]])
