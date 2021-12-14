import Foundation

func moveElementToEnd(_ array: inout [Int], _ toMove: Int) -> [Int] {
  
    var lastMovedIndex = 0
    
    for index in 0..<array.count {
        
        let element = array[index]
        
        if element == toMove {
            continue
        } else {
            array.remove(at: index)
            array.insert(element, at: lastMovedIndex)
            lastMovedIndex += 1
        }
    }
    
  return array
}

var a = [5, 1, 2, 5, 5, 3, 4, 6, 7, 5, 8, 9, 10, 11, 5, 5, 12]
moveElementToEnd(&a, 5)

//1, 2, 3, 4, 6, 7, 8, 9, 10, 11, 12, 5, 5, 5, 5, 5, 5]
