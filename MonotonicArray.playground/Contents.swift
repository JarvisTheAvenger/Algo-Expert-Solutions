import Foundation

func isMonotonic(array: [Int]) -> Bool {

    if array.isEmpty || array.count == 1 {
        return true
    }
        
    var i = 0
    var j = 1
    
    var isIncrease: Bool?
    var isDecrease: Bool?
    
    while j < array.count {
        if array[j] > array[i] {
            if let decrease = isDecrease, decrease == true {
                return false
            } else {
                isIncrease = true
            }
        } else if array[j] < array[i] {
            // decreasing
            if let increase = isIncrease, increase == true {
                return false
            } else {
                isDecrease = true
            }
        }
        
        i += 1
        j += 1
    }

    if isIncrease == nil && isDecrease == nil {
        return true
    }

    if isIncrease != nil && isDecrease == nil {
        return true
    }
    
    if isIncrease == nil && isDecrease != nil {
        return true
    }

    return false
}

var a = [1, 2, 3, 3, 2, 1]

isMonotonic(array: a)
