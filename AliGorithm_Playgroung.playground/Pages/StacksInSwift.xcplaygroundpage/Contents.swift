//: [Previous](@previous)

import Foundation
// Custom String Convertible 
class Human: CustomStringConvertible {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    var description: String {
        return "Name: \(self.name), Age: \(self.age)"
    }
}

var ali = Human(name: "Alisher", age: 26)
print(ali)
//: [Next](@next)
