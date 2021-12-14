import Foundation


func selectionSort(array: inout [Int]) -> [Int] {
    var sortPostion = 0

    while sortPostion < array.count - 1 {
        var minLocation = sortPostion
        
        for index in sortPostion..<array.count {
            if array[index] < array[minLocation] {
               minLocation = index
            }
        }
        
        let value = array[minLocation]
        
        array.remove(at: minLocation)
        array.insert(value, at: sortPostion)
        
        sortPostion += 1
    }
    
    return array
}

var array = [8, 5, 2, 9, 5, 6, 3]
selectionSort(array: &array)


//var a = [1,2,3]
//
//let value = a[2]
//
//a.remove(at: 2)
//a.insert(value, at: 2)
//
//print(a)
