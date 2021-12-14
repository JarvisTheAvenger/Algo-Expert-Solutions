import UIKit

func classPhotos(_ redShirtHeights: inout [Int], _ blueShirtHeights: inout [Int]) -> Bool {
    redShirtHeights.sort(by: >)
    blueShirtHeights.sort(by: >)
    
    var i = 0
    
    if redShirtHeights.first! == blueShirtHeights.first! {
        return false
    }
    
    var isRedNeedsBackSeat = false
    
    if redShirtHeights.first! > blueShirtHeights.first! {
        isRedNeedsBackSeat = true
    }
    
    while i < redShirtHeights.count {
        if isRedNeedsBackSeat {
            if redShirtHeights[i] <= blueShirtHeights[i] {
                return false
            }
        } else {
            if redShirtHeights[i] >= blueShirtHeights[i] {
                return false
            }
        }
        
        i += 1
    }
    
    return true
}

var redShirts = [6, 9, 2, 4, 5, 1]
var blueShirts = [5, 8, 1, 3, 4, 9]

classPhotos(&redShirts, &blueShirts)
