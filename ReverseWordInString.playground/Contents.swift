import Foundation

func reverseWordsInString(_ string: String) -> String {
    
    if string.count == 1 || string.isEmpty {
        return string
    }
    
    let characters = Array(string)
    var result = ""
    
    var currentIteration = ""
    
    for index in 0...characters.count-1 {
        let nextIndex = index + 1
        let currentChar = String(characters[index])
        
        if nextIndex < characters.count {
            let nextChar = String(characters[nextIndex])
            
            if (nextChar != " " && currentChar != " ") || (nextChar == " " && currentChar == " ") {
                currentIteration += currentChar
            } else if (nextChar != " " && currentChar == " ") || (nextChar == " " && currentChar != " ") {
                currentIteration += String(currentChar)
                
                let temp = result
                result = currentIteration
                result += temp
                
                currentIteration = ""
            }
            
        } else {
            currentIteration += String(currentChar)
            let temp = result
            result = currentIteration
            result += temp
        }
    }
    
    return result
}

reverseWordsInString("a")


//let a = "   "
//
//let b = Array(a)
//
//for el in b {
//    if el == " " {
//        print(1)
//    }
//}
