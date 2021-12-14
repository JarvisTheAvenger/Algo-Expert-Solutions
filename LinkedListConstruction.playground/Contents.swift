import UIKit

class Program {
    class Node {
        var value: Int
        var previous: Node?
        var next: Node?
        
        init(value: Int) {
            self.value = value
            previous = nil
            next = nil
        }
    }
    
    class DoublyLinkedList {
        var head: Node?
        var tail: Node?
        
        init() {
            head = nil
            tail = nil
        }
        
        func containsNodeWithValue(value: Int) -> Bool {
            var tempNode = head
            
            while tempNode !== nil, tempNode?.value != value {
                tempNode = tempNode?.next
            }
            
            return tempNode !== nil
        }
        
        func remove(node: Node) {
            if node === head {
                head = head?.next
                return
            }
            
            if node === tail {
                tail = tail?.previous
                return
            }
            
            removeNodeBindings(node: node)
        }
        
        func removeNodesWithValue(value: Int) {
            var tempNode = head
            
            while tempNode !== nil {
                let nodeToRemove = tempNode
                tempNode = tempNode?.next
                
                if nodeToRemove?.value == value {
                    remove(node: nodeToRemove!)
                }
            }
        }
        
        func insertBefore(node: Node, nodeToInsert: Node) {
            if nodeToInsert === head, nodeToInsert === tail {
                return
            }
            
            remove(node: nodeToInsert)
            
            nodeToInsert.previous = node.previous
            nodeToInsert.next = node
            
            if node.previous == nil {
                head = nodeToInsert
            } else {
                node.previous?.next = nodeToInsert
            }
            
            node.previous = nodeToInsert
        }
        
        func insertAfter(node: Node, nodeToInsert: Node) {
            if nodeToInsert === head, nodeToInsert === tail {
                return
            }
            
            remove(node: nodeToInsert)
            nodeToInsert.previous = node
            nodeToInsert.next = node.next
            
            if node.next == nil {
                tail = nodeToInsert
            } else {
                node.next?.previous = nodeToInsert
            }
            
            node.next = nodeToInsert
        }
        
        func setHead(node: Node) {
            if head == nil {
                head = node
                tail = node
                return
            }
            
            insertBefore(node: head!, nodeToInsert: node)
        }
        
        func setTail(node: Node) {
            if tail == nil {
                setHead(node: node)
                return
            }
            
            insertAfter(node: tail!, nodeToInsert: node)
        }
        
        func insertAtPosition(position: Int, nodeToInsert: Node) {
            if position == 1 {
                setHead(node: nodeToInsert)
                return
            }
            
            var tempNode = head
            var currentPosition = 1
            
            while tempNode != nil, currentPosition != position {
                tempNode = tempNode?.next
                currentPosition += 1
            }
            
            if tempNode !== nil {
                insertBefore(node: tempNode!, nodeToInsert: nodeToInsert)
            } else {
                setTail(node: nodeToInsert)
            }
            
        }
        
        func removeNodeBindings(node: Node) {
            if let previous = node.previous {
                previous.next = node.next
            }
            
            if let next = node.next {
                next.previous = node.previous
            }
            
            node.previous = nil
            node.next = nil
        }
    }
}
