import Foundation

func productSum(_ array: [Any]) -> Int {
    return performSum(1, array)
}

func performSum(_ level: Int = 1, _ array : [Any]) -> Int {
    var j = 0
    
    var sum = 0
    
    while(j <= array.count-1) {
        let el = array[j]
        
        if el is [Any] {
            sum += performSum(level+1, el as! [Any])
        } else {
            sum += (el as! Int)
        }
        
       j += 1

    }
    
    print(sum, level)
    
    return sum * level
}

productSum([5, 2, [7, -1], 3, [6, [-13, 8], 4]])
