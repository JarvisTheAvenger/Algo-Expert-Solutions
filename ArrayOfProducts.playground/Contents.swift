import Foundation

//func arrayOfProducts(_ array: [Int]) -> [Int] {
//
//    var i = 0
//    var productArray = [Int]()
//
//    while i <= array.count - 1 {
//        var j = 0
//
//        var product = 1
//
//        while j <= array.count - 1 {
//            if i != j {
//                product *= array[j]
//            }
//            j += 1
//        }
//
//        productArray.append(product)
//
//        i += 1
//    }
//
//  return productArray
//}

func arrayOfProducts(_ array: [Int]) -> [Int] {
    var products = [Int](repeating: 1, count: array.count)
    
    var leftRunningProduct = 1
    for i in 0..<array.count {
        products[i] = leftRunningProduct
        leftRunningProduct *= array[i]
    }
    
    var rightRunningProduct = 1
    for i in stride(from: array.count - 1, to: 0, by: -1) {
        products[i] = rightRunningProduct
        rightRunningProduct *= array[i]
    }
    
    return products
}

let result = arrayOfProducts([5,1,4,2])

print(result)
