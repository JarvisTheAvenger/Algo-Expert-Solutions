import Foundation

func runLengthEncoding(_ string: String) -> String {
    guard !string.isEmpty else { return string }
    
    let characters = Array(string)
    
    var currentServeIndex = 0
    var resultString = ""
    
    func manipulateString(_ count: Int) {
        if count >= 10 {
            let diff = count % 9
            let repeatingCount = count / 9
            
            let repeatString = Array(repeating:"9\(characters[currentServeIndex])", count: repeatingCount).joined()
            resultString += "\(repeatString)\(diff)\(characters[currentServeIndex])"
        } else {
            resultString += "\(count)\(characters[currentServeIndex])"
        }
    }
    
    for index in 0..<characters.count {
        
        if characters[currentServeIndex] != characters[index] {
            let count = index - currentServeIndex
            manipulateString(count)
            
            if index == characters.count - 1 {
                resultString += "1\(characters[index])"
            }
            
            currentServeIndex = index
            
        } else if characters[currentServeIndex] == characters[index] && index == characters.count - 1 {
            let count = index - currentServeIndex + 1
            manipulateString(count)
        }
    }
    
    return resultString
}

runLengthEncoding("[(aaaaaaa,bbbbbbb,ccccc,dddddd)]")

// 1[1(7a1,7b1,5c1,6d1)1]
