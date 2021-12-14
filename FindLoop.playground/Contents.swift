import UIKit

class Program {
    class LinkedList {
        var value: Int
        var next: LinkedList?
        
        init(value: Int) {
            self.value = value
            next = nil
        }
    }
    
    func findLoop(head: LinkedList) -> LinkedList? {
        guard head.next != nil else {
            return nil
        }
        
        var head: LinkedList? = head
        
        var slow: LinkedList? = head
        var fast: LinkedList? = head
        
        while fast != nil && fast?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
            
            if slow === fast {
                while head !== slow {
                    slow = slow?.next
                    head = head?.next
                }
                
                return slow
            }
        }
        
        return nil
    }
}
