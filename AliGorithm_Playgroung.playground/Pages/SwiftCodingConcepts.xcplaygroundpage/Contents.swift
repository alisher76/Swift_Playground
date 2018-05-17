//: [Previous](@previous)

import Foundation

// Using stride
func usingStride(from: Int, to: Int, by: Int) {
    for i in stride(from: from, to: to, by: by) {
        print(i)
    }
}
// usingStride(from: 1, to: 20, by: 2)

//FizzBuzz using switch statements
func fizzbuzz(number: Int) -> String {
    switch (number % 3 == 0, number % 5 == 0) {
    case (true, false):
        return "Fizz"
    case (false, true):
        return "Buzz"
    case (true, true):
        return "FizzBuzz"
    default:
        return String(number)
    }
}

// Nil coallescing
var namesAndNumbersOfFCplayers = ["Messi" : "10", "Cristiano" : "7", "Iniesta" : "8"]
var messi = namesAndNumbersOfFCplayers["messi"] ?? "Nope not there"
// print(messi)
func simpleSwitchWithTuple() {
    let point = (400, 0)
    switch point {
    case (let x, 0):
        print("X was \(x)")
    case (0, let y):
        print("Y was \(y)")
    case let (x, y):
        print("X was \(x) and Y was \(y)")
    }
}
// Sets Sample
var spaceships = Set<String>()
spaceships.insert("Serenity")
spaceships.insert("Enterprise")
spaceships.insert("TARDIS")
spaceships.insert("Serenity")
//print(spaceships.count)

func fallthroughSample() {
    """
    A fallthrough statement consists of the fallthrough keyword and occurs only in a case
    block of a switch statement. A fallthrough statement causes program execution to continue
    from one case in a switch statement to the next case. Program execution continues to the
    next case even if the patterns of the case label do not match the value of the switch
    statement’s control expression.
    """
    let name = "Simon"
    
    switch name {
    case "Simon":
        fallthrough
        
    case "Malcom", "Zoe", "Kaylee":
        print("Crew")
        
    default:
        print("Not crew")
    }
}
//let crew = NSMutableDictionary()
//crew.setValue("Kryten", forKey: "Mechanoid")
//print(crew.count)

func multiplyAllItemsIn(list: [Int]) -> Int {
    let back = list.reduce(1) { $0 * $1 }
    return back
}
// print(multiplyAllItemsIn(list: [2, 4, 5]))


/// -> Print The Second smallest number
func returnSecondSmallestNum(list: [Int]) -> Int {
    guard list.count > 1 else { return list.count }
    return list.sorted()[1]
}
// returnSecondSmallestNum(list: [1,4,6,7,8,9,11,23,3])

func findSum(list: [Int], n: Int) {
    var tempList = list.sorted()
    var enumerateList = tempList
    var back: [[Int]] = []
    
    for i in 0..<tempList.count {
        for (j,h) in enumerateList.enumerated() {
            if tempList[i] + h == n {
                var combination:[Int] = []
                combination.append(tempList[i])
                combination.append(enumerateList[j])
                back.append(combination)
                tempList.remove(at: i)
                enumerateList.remove(at: j)
                break
            }
        }
    }
    print(back)
}

// findSum(list: [2,5,8,2], n: 7)
func sumAllAndReturn(stringList: String) -> Int {
    let listOfStringInts = stringList.split(separator: " ")
    let listOfInts = listOfStringInts.map{ Int($0)! }
    let averageOfInt = (listOfInts.reduce(0, +) / listOfInts.count)
    return averageOfInt
}

// sumAllAndReturn(stringList: "1 3 10 13 5 2")

"""
STRING
Write a function that returns a string with each of its words reversed but in the original
order, without using a loop.

Sample input and output
• The string “Swift Coding Challenges” should return “tfiwS gnidoC segnellahC”.
• The string “The quick brown fox” should return “ehT kciuq nworb xof”.
"""

func reverseStringInput(input: String) -> String {
    let arrayOfInput = input.split(separator: " ")
    let reverserd = arrayOfInput.map { String($0.reversed()) }
    return reverserd.joined(separator: " ")
}

reverseStringInput(input: "Swift Coding Challenges") == "tfiwS gnidoC segnellahC"





//: [Next](@next)
