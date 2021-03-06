/*
 You are in charge of the cake for your niece's birthday and have decided the cake will have one candle for each year of her total age.
 When she blows out the candles, she’ll only be able to blow out the tallest ones.
 Your task is to find out how many candles she can successfully blow out.

 For example, if your niece is turning 4 years old, and the cake will have 4 candles of height 4, 4, 1, 3, she will be able to blow out 2 candles successfully, since the tallest candles are of height  4 and there are 2  such candles.
 Complete the function birthdayCakeCandles in the editor below.
 It must return an integer representing the number of candles she can blow out.
 */



import UIKit

class Solution {
    
    func birthdayCakeCandles(ar: [Int]) -> Int {
        let maxHeight = ar.max()
        var numberMaxCandles = 0
        
        for i in ar {
            if i == maxHeight {
                numberMaxCandles += 1
            }
        }
        
        return numberMaxCandles
    }
}


let exmp = Solution()
exmp.birthdayCakeCandles(ar: [7, 1, 3, 7, 3])
