import Foundation

func sortedSquaredArray(_ array: [Int]) -> [Int] {
    
    var sortedSquaredArray = [Int]()
    
    for element in array {
        sortedSquaredArray.append(element*element)
    }
    
    return sortedSquaredArray
}
