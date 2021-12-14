import Foundation

class LinkedList {
    var value: Int
    var next: LinkedList?
    
    init(value: Int) {
        self.value = value
    }
}

func removeDuplicatesFromLinkedList(_ linkedList: LinkedList) -> LinkedList {
    var linkedList : LinkedList? = linkedList
    let orginalList = linkedList
    
    var visited = [Int:Int]()
    var lastVisited : LinkedList?
    
    while linkedList != nil {
        if let _ = visited[linkedList!.value] {
            // Duplicate node in the linked list
            lastVisited?.next = nil
            lastVisited?.next = linkedList!.next
        } else {
            // Add element in visited dictionary
            visited[linkedList!.value] = linkedList!.value
            lastVisited = linkedList
        }
        
        if linkedList?.next == nil {
            return orginalList!
        }
        
        linkedList = linkedList?.next!
        
    }
    
    return orginalList!
}


let list = LinkedList(value: 1)

let list2 = LinkedList(value: 2)

let list3 = LinkedList(value: 3)

let list4 = LinkedList(value: 1)

let list5 = LinkedList(value: 4)

list.next = list2

list2.next = list3

list3.next = list4

list4.next = list5

15-(-1)
  
