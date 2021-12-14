import Foundation


func firstNonRepeatingCharacter(_ string: String) -> Int {
    let characters = Array(string)
    var stringDictionary = [Character: Int]()
    
    // Character + location + how many times occured
    for char in characters  {
        if let count = stringDictionary[char] {
            stringDictionary[char] = count + 1
        } else {
            stringDictionary[char] = 1
        }
    }
    
    for index in 0..<characters.count {
        let char = characters[index]
        
        if let count = stringDictionary[char], count == 1 {
            return index
        }
    }
    
  return -1
}

firstNonRepeatingCharacter("abcddafbc")
