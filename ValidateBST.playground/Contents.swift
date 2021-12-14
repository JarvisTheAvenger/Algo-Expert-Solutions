import Foundation

class Program {
    // This is an input class. Do not edit.
    class BST {
        var value: Int?
        var left: BST?
        var right: BST?
        
        init(value: Int) {
            self.value = value
            left = nil
            right = nil
        }
    }
    
    func validate(tree: BST?, minimum: inout Int, maximum: inout Int) -> Bool {
        if tree === nil {
            return true
        }
        
        if let tree = tree, let value = tree.value, value < minimum || value >= maximum {
            return false
        }
        
        if var treeValue = tree?.value {
            let leftIsValid = validate(tree: tree?.left, minimum: &minimum, maximum: &treeValue)
            let rightIsValid = validate(tree: tree?.right, minimum: &treeValue, maximum: &maximum)
            
            return leftIsValid && rightIsValid
        } else {
             return false
        }
        
    }
    
    func validateBst(tree: BST) -> Bool {
        var maximum = Int(Int32.max)
        var minimum = Int(Int32.min)
        return validate(tree: tree,minimum: &minimum, maximum: &maximum)
    }
}

