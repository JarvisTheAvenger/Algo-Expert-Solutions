import Foundation

func findThreeLargestNumbers(array: [Int]) -> [Int] {
    var thirdLargest = Int.min
    var secondLargest = Int.min
    var firstLargest = Int.min
    
    for number in array {
        if number >= firstLargest {
            let temp1 = firstLargest
            let temp2 = secondLargest
            firstLargest = number
            secondLargest = temp1
            thirdLargest = temp2
        } else if number >= secondLargest {
            let temp1 = secondLargest
            secondLargest = number
            thirdLargest = temp1
        } else if number >= thirdLargest {
            thirdLargest = number
        }
        
    }
    
    return [thirdLargest, secondLargest, firstLargest]
}

findThreeLargestNumbers(array: [-1, -2, -3, -7, -17, -27, -18, -541, -8, -7, 7])


let firstPair = (4,5)
let secondPair = (3,2)

print(firstPair<secondPair)

let thirdPair = (4,19)

print(secondPair<thirdPair)
