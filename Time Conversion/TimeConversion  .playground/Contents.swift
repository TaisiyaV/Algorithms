/*
 Given a time in 12-hour AM/PM format, convert it to military (24-hour) time.

 Note: Midnight is 12:00:00AM on a 12-hour clock, and 00:00:00 on a 24-hour clock.
 Noon is 12:00:00PM on a 12-hour clock, and 12:00:00 on a 24-hour clock.
 
 Complete the timeConversion function in the editor below.
 It should return a new string representing the input time in 24 hour format.

 timeConversion has the following parameter(s):

 s: a string representing time in 12 hour format (i.e.: hh:mm:ssAM or hh:mm:ssPM ), where 01 <= hh <= 12 and  00 <= mm, ss <= 59.
 
 07:05:45PM
 19:05:45
 
 
 */

import UIKit


class Solution {
    
    func timeConversion(s: String) -> String {
        let df = DateFormatter()
        df.dateFormat = "hh:mm:ssa"
        
        let date = df.date(from: s)
        df.dateFormat = "HH:mm:ss"
        
        let time24 = df.string(from: date!)
        
        return time24
    }
    
}

let exmpl = Solution()
exmpl.timeConversion(s: "07:05:45pm")
exmpl.timeConversion(s: "12:05:45am")

