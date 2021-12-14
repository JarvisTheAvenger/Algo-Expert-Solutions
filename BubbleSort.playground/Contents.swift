import Foundation


func bubbleSort(array: inout [Int]) -> [Int] {
  
    for _ in 0..<array.count {
        
        var i = 0
        var j = 1
        var swapNeeded = false
        
        while j < array.count {
            if array[i] > array[j] {
                let temp = array[i]
                array[i] = array[j]
                array[j] = temp
                
                swapNeeded = true
            }
            
            i += 1
            j += 1
        }
        
        if swapNeeded == false {
            return array
        }
    }
    
  return array
}

var array = [8, 5, 2, 9, 5, 6, 3]
let result = bubbleSort(array: &array)
print(result)
