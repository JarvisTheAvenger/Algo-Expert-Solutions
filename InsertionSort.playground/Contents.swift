import Foundation

func insertionSort(array: inout [Int]) -> [Int] {
    var sortPosition = 1
    
    for index in sortPosition..<array.count {
        compareValues(array: &array, sortPosition: sortPosition, currentIndex: index)
        sortPosition += 1
    }
    
    return array
}

func compareValues(array: inout [Int], sortPosition: Int, currentIndex: Int) {
    for index in 0..<sortPosition {
        if array[currentIndex] < array[index] {
            let temp = array[currentIndex]
            array.remove(at: currentIndex)
            array.insert(temp, at: index)
        }
    }
}

var array = [8, 5, 2, 9, 5, 6, 3]
insertionSort(array: &array)

