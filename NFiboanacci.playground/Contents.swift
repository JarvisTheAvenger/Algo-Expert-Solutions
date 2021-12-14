import Foundation


func getNthFib(n: Int) -> Int {
    var firstNumber = 0
    var secondNumber = 1
    
    if n == 1 {
        return firstNumber
    }
    
    if n == 2 {
        return secondNumber
    }
    
    var i = 2
    
    while i < n {
        
        let temp = firstNumber + secondNumber
        
        firstNumber = secondNumber
        secondNumber = temp
        
        print(secondNumber)
        
        i += 1
    }
    
    return secondNumber
}


getNthFib(n: 5)
