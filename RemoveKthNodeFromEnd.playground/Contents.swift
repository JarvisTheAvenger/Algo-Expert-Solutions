import UIKit

class Program {
    // This is an input class. Do not edit.
    class LinkedList {
        var value: Int?
        var next: LinkedList?
        
        init(value: Int) {
            self.value = value
            next = nil
        }
    }
    
    func removeKthNodeFromEnd(head: LinkedList, k: Int) {
        var counter = 1
        
        var slow: LinkedList? = head
        var fast: LinkedList? = head
        
        // Traverse fast pointer k times ahead of slow pointer
        while counter <= k {
            fast = fast?.next
            counter += 1
        }
        
        if fast == nil {
            head.value = head.next?.value
            head.next = head.next?.next
            
            return
        }
        
        while fast?.next != nil {
            fast = fast?.next
            slow = slow?.next
        }
        
        // Now slow pointer should be on the Kth node from end.
        slow?.next = slow?.next?.next
    }
}
