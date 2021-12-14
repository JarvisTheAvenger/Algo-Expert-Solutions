import Foundation

func firstDuplicateValue(_ array: inout [Int]) -> Int {
    var visited = [Int: Int]()
    
    for a in array {
        if let value = visited[a] {
           return value
        } else {
            visited[a] = a
        }
    }
    
  return -1
}

var a = [2,1,5,2,3,3,4]

firstDuplicateValue(&a)

