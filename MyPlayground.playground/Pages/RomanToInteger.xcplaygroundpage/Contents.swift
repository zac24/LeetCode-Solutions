
func romanToInt(_ s: String) -> Int {

    var romanToIntDict = ["I":1, "V":5, "X":10, "L":50, "C":100, "D":500, "M":1000]
    var resultInt: Int = 0
    let characters = Array(s)
    
//    for var i in 0..<characters.count {
//        if i == characters.count - 1 {
//            resultInt += romanToIntDict[String(characters[i])]!
//        }
//        if i < characters.count - 1 && (romanToIntDict[String(characters[i])]! > romanToIntDict[String(characters[i+1])]!) {
//            resultInt += romanToIntDict[String(characters[i])]!
//        }
//        if i < characters.count - 1 && (romanToIntDict[String(characters[i])]! < romanToIntDict[String(characters[i+1])]!) {
//            resultInt += romanToIntDict[String(characters[i+1])]! - romanToIntDict[String(characters[i])]!
//            i = i + 1  // This i increments doesn't reflect on for loop.
//        }
//    }
    
    var i : Int = 0;
    
    while i < characters.count {
        if i == characters.count - 1 {
            resultInt += romanToIntDict[String(characters[i])]!
        }
        if i < characters.count - 1 && (romanToIntDict[String(characters[i])]! > romanToIntDict[String(characters[i+1])]!) {
            resultInt += romanToIntDict[String(characters[i])]!
        }
        if i < characters.count - 1 && (romanToIntDict[String(characters[i])]! < romanToIntDict[String(characters[i+1])]!) {
            resultInt += romanToIntDict[String(characters[i+1])]! - romanToIntDict[String(characters[i])]!
            i = i + 1
        }
        i += 1
    }
    return resultInt
}

print(romanToInt("XC"))

