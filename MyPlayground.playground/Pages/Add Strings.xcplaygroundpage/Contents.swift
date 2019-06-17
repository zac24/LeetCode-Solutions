func addStrings(_ num1: String, _ num2: String) -> String {
    
    var tempNum1 = num1
    var tempNum2 = num2
    
    tempNum1 = getBinaryEquivalent(numString:tempNum1)
    tempNum2 = getBinaryEquivalent(numString:tempNum2)
    
    return ""
}

func getBinaryEquivalent(numString:String) -> String {
    for i in numString{
        let asciiVal = i.asciiValue
        print(asciiVal!)
    }
    return ""
}
