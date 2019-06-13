func longestCommonPrefix(_ strs: [String]) -> String {
    var resultString : String = ""
    if strs.isEmpty {
        return resultString
    }
    
    let sortedStringArray = strs.sorted()
    var firstString = Array(sortedStringArray.first!)
    var lastString = Array(sortedStringArray.last!)
    
    let length = firstString.count < lastString.count ? firstString.count : lastString.count

    for i in 0..<length {
        if firstString[i] == lastString[i] {
            resultString.append(firstString[i])
        }else {
            return resultString
        }
    }
    return resultString
}

//var stringArray : [String] = []

var stringArray = ["flower","flow","flight"]

print(longestCommonPrefix(stringArray))


// Sample Inputs

//["flower","flow","flight"]
//["car", "dog", "care"]
//["dog","racecar","car"]
//["flew","flexes","flewer","flews","fleght"]
