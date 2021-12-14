import UIKit

var str = "Hello, playground"

struct User {
    var identifier: String
    var handle: String
    @LoggingExcluded var name: String
    @LoggingExcluded var dateOfBirth: Date
    @Capitalized var city: String
}

@propertyWrapper
struct LoggingExcluded<Value>: CustomStringConvertible, CustomDebugStringConvertible, CustomLeafReflectable {
    
    var wrappedValue: Value
    
    init(wrappedValue: Value) {
        self.wrappedValue = wrappedValue
    }
    
    var description: String {
        return "--redacted--"
    }
    
    var debugDescription: String {
        return "--redacted--"
    }
    
    var customMirror: Mirror {
        return Mirror(reflecting: "--redacted--")
    }
}

@propertyWrapper
struct Capitalized {
    var wrappedValue: String {
        didSet { wrappedValue = wrappedValue.capitalized }
    }

    init(wrappedValue: String) {
        self.wrappedValue = wrappedValue.capitalized
    }
}

var user = User(identifier: "1",
                handle: "Product",
                name: "Rahul",
                dateOfBirth: Date(),
                city: "Pune")

print(user)

user.city = "Mumbai"

print(user.city.capitalized)


