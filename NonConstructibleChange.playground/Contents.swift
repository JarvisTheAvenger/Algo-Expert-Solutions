import Foundation

func nonConstructibleChange(_ coins: inout [Int]) -> Int {
    coins.sort()
    
    var change = 0
    
    print(coins)
    
    for coin in coins {
        if coin > change + 1 {
            return change + 1
        } else {
            change += coin
        }
    }
    
    return change + 1
}

var a = [5,7,1,1,2,3,22]
print(nonConstructibleChange(&a))
