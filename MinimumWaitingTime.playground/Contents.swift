import Foundation

//func minimumWaitingTime(_ queries: inout [Int]) -> Int {
//    queries.sort()
//
//    var total = 0
//
//    for index in 0..<queries.count {
//        if index == 0 {
//            continue
//        }
//
//        var temp = 0
//
//        for index1 in 0..<index {
//            let waitingTime = queries[index1]
//            temp += waitingTime
//        }
//
//        total += temp
//
//    }
//
//    return total
//}


func minimumWaitingTime(_ queries: inout [Int]) -> Int {
    queries.sort()
    
    var total = 0
    var sumArray = [Int]()
    
    for index in 0..<queries.count {
        let element = queries[index]
        sumArray.append(total)
        total += element
    }
    
    total = 0
    
    for element in sumArray {
        total += element
    }
    
    return total
}

var a = [2, 1, 1, 1]
minimumWaitingTime(&a)
