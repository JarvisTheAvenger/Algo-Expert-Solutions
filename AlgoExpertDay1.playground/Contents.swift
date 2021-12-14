import Foundation

//func twoNumberSum(_ array: inout [Int], _ targetSum: Int) -> [Int] {
//
//    var visited = [Int:Int]()
//
//    for el in array {
//        let expectedValue = targetSum - el
//
//        if let value = visited[expectedValue] {
//            return [el, value]
//        }
//
//        visited[el] = el
//    }
//
//    return []
//}

func twoNumberSum(_ array: inout [Int], _ targetSum: Int) -> [Int] {
    array.sort()
    
    var leftPointer = 0
    var rightPointer = array.count - 1
    
    while leftPointer < rightPointer {
        
        let sum = array[leftPointer] + array[rightPointer]
        
        if sum == targetSum {
            return [array[leftPointer], array[rightPointer]]
        } else if sum < targetSum {
            leftPointer += 1
        } else if sum > targetSum {
            rightPointer -= 1
        }
        
    }
    return []
}


var array = [3,5,-4,8,11,1,-1,6]


twoNumberSum(&array, 10)





