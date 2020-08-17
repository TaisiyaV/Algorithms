class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
        var distionary: [Int : Int] = [:]
        var resultArray: [Int] = []
        
        for (i,j) in nums.enumerated() {
            if let index = distionary[target - j] {
                resultArray.append(index)
                resultArray.append(i)
            }
            distionary[j] = i
        }
        return resultArray
    }
}

let example = Solution()
example.twoSum([2, 3, 10, 1, 5], 13)

