//: [Previous](@previous)

import Foundation

let bills = [
    "Electricity 10.00",
    "Water -10",
    "gas +10",
]

class Entry {
    let name: String
    let value: Double
    
    init?(entry: String) {
        name = "Paycheck"
        value = 10.0
    }
}

let paycheck = Entry(entry: "Paycheck +10")
assert(paycheck?.name == "Paycheck")

//: [Next](@next)
