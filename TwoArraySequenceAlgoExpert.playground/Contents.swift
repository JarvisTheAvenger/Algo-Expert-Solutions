import Foundation

func isValidSubsequence(_ array: [Int], _ sequence: [Int]) -> Bool {
    var index = 0
    
    for element in array {
        if element == subseqence[index] {
            print(subseqence[index])
            index += 1
        }
    }
    
    return sequence.count == index
}

 let array = [5, 1, 22, 25, 6, -1, 8, 10]
 let subseqence = [1, 6, -1, 10]

 isValidSubsequence(array, subseqence)
