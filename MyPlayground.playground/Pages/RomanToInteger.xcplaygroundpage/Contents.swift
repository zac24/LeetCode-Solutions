
func romanToInt(_ s: String) -> Int {
    
    var romanToIntDict = ["I":1, "V":5, "X":10, "L":50, "C":100, "D":500, "M":1000]
    var resultInt: Int = 0
    
    
    for char in s {
        print(type(of: char))
        resultInt = resultInt + romanToIntDict[String(char)]!
    }
    
    return resultInt
}

print(romanToInt("IV"))
