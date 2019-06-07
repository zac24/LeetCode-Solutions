//7. Reverse Integer

let inputNum = -51743


func reverse(_ x: Int) -> Int {
    var resultNum :Int = 0
    var n : Int = Int()
    n = x>=0 ? x : -x
    while n>0 {
        resultNum = resultNum*10 + n%10
        n = n/10
    }
    
    resultNum = x>=0 ? resultNum : -resultNum
    return resultNum
}

print(reverse(inputNum))

