import Foundation

func tandemBicycle(_ redShirtSpeeds: inout [Int],
                   _ blueShirtSpeeds: inout [Int],
                   _ fastest: Bool) -> Int {
    
    
    redShirtSpeeds.sort()
    blueShirtSpeeds.sort()
    
    var i = fastest ? 0 : redShirtSpeeds.count - 1
    var j = redShirtSpeeds.count - 1
    
    var result = 0
    
    if fastest {
        while i < redShirtSpeeds.count {
            
            let ith = redShirtSpeeds[i]
            let jth = blueShirtSpeeds[j]
            
            let a = max(ith, jth)
            
            result += a
            
            i += 1
            j -= 1
        }
    } else {
        while i >= 0 {
            
            let ith = redShirtSpeeds[i]
            let jth = blueShirtSpeeds[j]
            
            let a = max(ith, jth)
            
            result += a
            
            i -= 1
            j -= 1
        }
    }
    
    return result
}

var red = [5,5,3,9,2]
var blue = [3,6,7,2,1]

tandemBicycle(&red, &blue, true)
