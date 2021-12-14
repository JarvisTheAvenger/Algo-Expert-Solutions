import Foundation

//func smallestDifference(arrayOne: inout [Int], arrayTwo: inout [Int]) -> [Int] {
//    var tuppleSmallestDifference : (first: Int, second: Int, difference: Int)?
//
//    for element in arrayOne {
//
//        for innerElement in arrayTwo {
//            if tuppleSmallestDifference == nil {
//                let difference = Int((element - innerElement).magnitude)
//                tuppleSmallestDifference = (element, innerElement, difference)
//            } else {
//                let currentDifference = Int((element - innerElement).magnitude)
//                let lastSmallestDifference = tuppleSmallestDifference!.difference
//
//                if currentDifference < lastSmallestDifference {
//                    tuppleSmallestDifference = (element, innerElement, currentDifference)
//                }
//            }
//        }
//
//    }
//
//    return [tuppleSmallestDifference!.first, tuppleSmallestDifference!.second]
//}


func smallestDifference(arrayOne: inout [Int], arrayTwo: inout [Int]) -> [Int] {
    arrayOne.sort()
    arrayTwo.sort()
    
    var idxOne = 0
    var idxTwo = 0
    
    var current = Int.max
    var smallest = Int.max
    
    var smallestPair = [Int]()
    
    while idxOne < arrayOne.count, idxTwo < arrayTwo.count {
        
        let firstNum = arrayOne[idxOne]
        let secondNum = arrayTwo[idxTwo]
        
        if firstNum < secondNum {
            current = secondNum - firstNum
            idxOne += 1
            
        } else if firstNum > secondNum {
            current = firstNum - secondNum
            idxTwo += 1
        } else {
            return [firstNum, secondNum]
        }

        if smallest > current {
            smallest = current
            smallestPair = [firstNum, secondNum]
        }
        
        
    }
    
    return smallestPair
}



var a = [-1, 5, 10, 20, 3]
var b = [26, 134, 135, 15, 17]

smallestDifference(arrayOne: &a, arrayTwo: &b)


// 
