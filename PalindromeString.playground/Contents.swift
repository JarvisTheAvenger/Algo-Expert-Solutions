import Foundation

func isPalindrome(string: String) -> Bool {
    
    let characters = Array(string)
    
    var i = 0
    var j = characters.count - 1
    
    while i < j {
        if characters[i] == characters[j] {
            i += 1
            j -= 1
        } else {
            return false
        }
    }
    
    return true
}

isPalindrome(string: "abcdefghihgfeddcba")
