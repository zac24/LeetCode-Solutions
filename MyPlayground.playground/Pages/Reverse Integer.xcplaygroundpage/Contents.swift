//7. Reverse Integer

let inputNum = 123


func reverse(_ x: Int) -> Int {
    var resultNum :Int = 0
    var n = x
    
    while n>0 {
        resultNum = resultNum*10 + n%10
        n = n/10
    }
    
    return resultNum
}

print(reverse(inputNum))

