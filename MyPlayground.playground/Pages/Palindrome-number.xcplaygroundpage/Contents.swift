let number = 0

func isPalindrome(_ x: Int) -> Bool {
    var resultNum : Int = 0
    var origNum = x
    while origNum > 0 {
        resultNum = resultNum*10 + origNum%10
        origNum = origNum/10
    }
    
    return resultNum == x
}

print(isPalindrome(number))


