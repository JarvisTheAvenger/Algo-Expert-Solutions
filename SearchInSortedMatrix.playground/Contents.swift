import UIKit

func searchInSortedMatrix(matrix: [[Int]], target: Int) -> [Int] {
    var row = 0
    var column = matrix.first!.count-1
    
    while row < matrix.count && column >= 0 {
        if matrix[row][column] == target {
            return [row, column]
        } else if matrix[row][column] < target {
            row += 1
        } else if matrix[row][column] > target {
            column -= 1
        }
    }
    
    return [-1, -1]
}


let matrix = [
    [1, 4, 7, 12, 15, 1000],
    [2, 5, 19, 31, 32, 1001],
    [3, 8, 24, 33, 35, 1002],
    [40, 41, 42, 44, 45, 1003],
    [99, 100, 103, 106, 128, 1004]
]

searchInSortedMatrix(matrix: matrix, target: 4)

