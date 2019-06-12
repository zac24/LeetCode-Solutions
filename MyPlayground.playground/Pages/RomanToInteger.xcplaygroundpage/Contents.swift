
func romanToInt(_ s: String) -> Int {
    
    if s.isEmpty{
        return 0
    }

    
    var resultInt: Int = 0
    let characters = Array(s)
    var i : Int = 0;
    
    
 /* // ============= One way of Doing ========================//
    var romanToIntDict = ["I":1, "V":5, "X":10, "L":50, "C":100, "D":500, "M":1000]
    while i < characters.count {
        if i == characters.count - 1 {
            resultInt += romanToIntDict[String(characters[i])]!
        }
        if i < characters.count - 1 && (romanToIntDict[String(characters[i])]! >= romanToIntDict[String(characters[i+1])]!) {
            resultInt += romanToIntDict[String(characters[i])]!
        }
        if i < characters.count - 1 && (romanToIntDict[String(characters[i])]! < romanToIntDict[String(characters[i+1])]!) {
            resultInt += romanToIntDict[String(characters[i+1])]! - romanToIntDict[String(characters[i])]!
            i = i + 1
        }
        i += 1
    }
    */
    
    // ============= Another way of Doing ========================//
    var romanToIntDict : [Character:Int] = ["I":1, "V":5, "X":10, "L":50, "C":100, "D":500, "M":1000]
    while i < characters.count - 1 {
        let val = romanToIntDict[characters[i]]
        let nextVal = romanToIntDict[characters[i+1]]
        resultInt += (val! > nextVal!) ? val! : -val!
        i += 1
    }
    
    resultInt += romanToIntDict[characters.last!]!
    
    return resultInt
}

print(romanToInt("XCV"))

