var numArray = [2,7,11,15]
var target =  9

/*func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var resultIndices : [Int] = []
    for i in 0..<nums.count-1 {
        if (nums[i] + nums[i+1] == target) {
            resultIndices.append(i)
            resultIndices.append(i+1)
            break
        }
    }
    return resultIndices
}*/

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var resultSet : Set = Set<Int>()
    
    for i in 0..<nums.count {
        let remainingValuetoSearch = target - nums[i]
        if resultSet.contains(remainingValuetoSearch) {
            if let previousIndex = nums.firstIndex(of: remainingValuetoSearch){
                return [previousIndex, i]
            }
        }else {
            resultSet.insert(nums[i])
        }
    }
    return []
}


print(twoSum(numArray, target))
