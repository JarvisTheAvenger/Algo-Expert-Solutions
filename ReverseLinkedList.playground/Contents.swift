import Foundation

class Program {
    // This is an input class. Do not edit.
    class LinkedList {
        var value: Int
        var next: LinkedList?
        
        init(value: Int) {
            self.value = value
        }
    }
    
    func reverseLinkedList(_ head: LinkedList) -> LinkedList {
        var p1 : LinkedList?
        var p2: LinkedList? = head
        
        while p2 != nil {
            let p3 : LinkedList? = p2?.next
            p2?.next = p1
            p1 = p2
            p2 = p3
        }
        
        return p1!
    }
    
}
