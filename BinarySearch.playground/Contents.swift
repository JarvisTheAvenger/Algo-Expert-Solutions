import Foundation


func binarySearchRecursive(array: [Int], target: Int, low: Int, high: Int) -> Int {
    if low > high { return -1 }
    
    let mid = low + ((high - low) / 2)
    
    if (array[mid] == target) {
        return mid
    } else if (target < array[mid]) {
        return binarySearchRecursive(array: array, target: target, low: low, high: mid-1)
    }
    
    return binarySearchRecursive(array: array, target: target, low: mid+1, high: high)
}



func binarySearch(array: [Int], target: Int) -> Int {
    return binarySearchRecursive(array:array, target: target, low: 0, high: array.count-1)
}

binarySearch(array: [0, 1, 21, 33, 45, 45, 61, 71, 72, 73, 355], target: 33)
