import Foundation

class Program {
    class BST {
        var value: Int
        var left: BST?
        var right: BST?
        
        init(value: Int) {
            self.value = value
            left = nil
            right = nil
        }
    }
    
    func recursiveClosest(tree: BST?, target: Int, lastClosest: Int) -> Int {
        guard let node = tree else {
            return lastClosest
        }
        
        let lastCloseDiff = target - lastClosest
        
        if target > node.value {
            
            guard let rightNodeValue = node.right?.value else {
                return recursiveClosest(tree: node.right, target: target, lastClosest: lastClosest)
            }
            
            let currentCloseDiff = target - rightNodeValue
            let closest = currentCloseDiff.magnitude < lastCloseDiff.magnitude ? rightNodeValue : lastClosest
            
            return recursiveClosest(tree: node.right, target: target, lastClosest: closest)
        } else if target < node.value {
            
            guard let leftNodeValue = node.left?.value else {
                return recursiveClosest(tree: node.left, target: target, lastClosest: lastClosest)
            }
            
            let currentCloseDiff = target - leftNodeValue
            let closest = currentCloseDiff.magnitude < lastCloseDiff.magnitude ? leftNodeValue : lastClosest
            
            return recursiveClosest(tree: node.left, target: target, lastClosest: closest)
        }
        
        return lastClosest
    }
    
    func findClosestValueInBST(tree: BST?, target: Int) -> Int {
        return recursiveClosest(tree: tree, target: target, lastClosest: tree?.value ?? 0)
    }
}

