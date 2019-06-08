let number = -121

func isPalindrome(_ x: Int) -> Bool {
    var resultNum : Int = 0
    var origNum = x
    while origNum > 0 {
        resultNum = resultNum*10 + origNum%10
        origNum = origNum/10
    }
    if resultNum == x {
        return true
    }else if(x < 0) {
        return false
    }else {
        return false
    }
}

print(isPalindrome(number))


