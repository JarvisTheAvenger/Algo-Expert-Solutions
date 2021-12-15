import UIKit

func longestPalindromicSubstring(string: String) -> String {
    var currentLongest = [0,1]
    
    for i in 0..<string.count {
        
        var oldLeftIndex = i - 1
        var oddRightIndex = i + 1
        let odd  = getLongestpalindromeFrom(string: string, leftIndex: &oldLeftIndex, rightIndex: &oddRightIndex)
        
        var evenLeftIndex = i - 1
        var evenRightIndex = i
        let even = getLongestpalindromeFrom(string: string, leftIndex: &evenLeftIndex, rightIndex: &evenRightIndex)
        
        var temporaryLongest = [Int]()
        
        if let oddFirst = odd.first, let oddLast = odd.last,
           let evenFirst = even.first, let evenLast = even.last {
            if oddLast - oddFirst > evenLast - evenFirst {
                temporaryLongest = odd
            } else {
                temporaryLongest = even
            }
        }
        
        if let temporaryFirst = temporaryLongest.first, let temporaryLast = temporaryLongest.last,
           let currentFirst = currentLongest.first, let currentLast = currentLongest.last {
            if temporaryLast - temporaryFirst > currentLast - currentFirst {
                currentLongest = temporaryLongest
            }
        }
        
    }
    
    let firstIndex = string.index(string.startIndex, offsetBy: currentLongest.first!)
    let lastIndex = string.index(string.startIndex, offsetBy: currentLongest.last!)
    
    let result = String(string[firstIndex..<lastIndex])
    
    return result
}
    
func getLongestpalindromeFrom(string: String, leftIndex: inout Int, rightIndex: inout Int) -> [Int] {
    while leftIndex >= 0, rightIndex < string.count {
        let leftStringIndex = string.index(string.startIndex, offsetBy: leftIndex)
        let rightStringIndex = string.index(string.startIndex, offsetBy: rightIndex)
        
        if string[leftStringIndex] != string[rightStringIndex] {
            break
        }
        
        leftIndex -= 1
        rightIndex += 1
    }
    
    return [leftIndex + 1, rightIndex]
}

