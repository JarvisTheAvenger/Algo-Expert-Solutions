import Foundation

class Program {
    class BST {
        var value: Int
        var left: BST?
        var right: BST?
        
        init(value: Int) {
            self.value = value
        }
    }
    
    func traverseInLeftMostNode(_ node: BST?,  sum : Int, array : inout [Int]) {
        
        if let node = node {
            let runningSum = sum + node.value
            
            if node.left == nil, node.right == nil {
                array.append(runningSum)
                return
            }
            
            traverseInLeftMostNode(node.left, sum: runningSum, array: &array)
            traverseInLeftMostNode(node.right, sum: runningSum, array: &array)
        }
        
    }
    
    
    func branchSums(root: BST) -> [Int] {
        var result = [Int]()
        traverseInLeftMostNode(root, sum: 0, array: &result)
        return result
    }
}
