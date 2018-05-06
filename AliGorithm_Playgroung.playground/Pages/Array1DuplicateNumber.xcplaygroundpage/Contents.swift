//: [Previous](@previous)

import Foundation
// Challenge 1
"""
Given an array a that contains only numbers in the range from 1 to a.length, find
the first duplicate number for which the second occurrence has the minimal index.
In other words, if there are more than 1 duplicated numbers, return the number for
which the second occurrence has a smaller index than the second occurrence of the
other number does. If there are no such elements, return -1.
"""

// a = [2, 3, 3, 1, 5, 2] Input
// firstDuplicate(a) = 3 Ouput

/// The element in a that occurs in the array more than once and
/// has the minimal index for its second occurrence. If there are no such elements, return -1.

func firstDuplicate(a: [Int]) -> Int {
    
    var seenDic: [Int:Bool] = [:]
    for i in a {
        print(i)
        if seenDic[i] == nil {
            seenDic[i] = true
        } else {
            return i
        }
    }
    return -1
}

// Challenge 2
"""
Given a string s, find and return the first instance
of a non-repeating character in it. If there is no such character, return '_'.

Example

For s = "abacabad", the output should be
firstNotRepeatingCharacter(s) = 'c'

There are 2 non-repeating characters in the string: 'c' and 'd'. Return c since it appears in the string first.

For s = "abacabaabacaba", the output should be
firstNotRepeatingCharacter(s) = '_'
"""
// Code challenge is taken from codeFight so its suppose run in swift 3
// In Swift 3 input.characters should be used
func firstNotRepeated(input: String) -> Character {

    var back: Character = "_"
    var dict = [Character:Int]()
    for i in input {
        dict[i] = (dict[i] ?? 0) + 1
    }
    for i in input {
        if dict[i] == 1 {
            back = i
            break
        }
    }
    return back
}

//firstNotRepeated(input: "abacabaabacaba")
"""
You are given an n x n 2D matrix that represents an image. Rotate the image by 90 degrees (clockwise).

Example

For a = [[1, 2, 3],
        [4, 5, 6],
        [7, 8, 9]]

the output should be

rotateImage(a) = [[7, 4, 1],
                 [8, 5, 2],
                 [9, 6, 3]]
"""

func rotateImage(a: [[Int]]) -> [[Int]] {
    var bottom: [Int] = []
    var mid: [Int] = []
    var top: [Int] = []
    
    for i in (0...a.count - 1).reversed() {
        var temp = a[i]
        bottom.append(temp[temp.count - 1])
        temp.removeLast()
        mid.append(temp[temp.count - 1])
        temp.removeLast()
        top.append(temp[temp.count - 1])
    }
    let back = [top,mid,bottom]
    return (back)
}

//rotateImage(a: [[1,2,3], [4,5,6], [7,8,9]])

"""
Given an array of integers, write a function that determines whether the array
contains any duplicates. Your function should return true if any element appears
at least twice in the array, and it should return false if every element is distinct.

Example

For a = [1, 2, 3, 1], the output should be
containsDuplicates(a) = true.

There are two 1s in the given array.

For b = [3, 1], the output should be
containsDuplicates(a) = false.

"""

func containsDuplicates(a: [Int]) -> Bool {
    return !(Set(a).count == a.count)
}
// containsDuplicates(a: [1, 2, 3, 4, 1]) == true
"""
You have two integer arrays, a and b, and an integer target value v.
Determine whether there is a pair of numbers, where one number is
taken from a and the other from b, that can be added together to get a sum of v.
Return true if such a pair exists, otherwise return false.

Example

For a = [1, 2, 3], b = [10, 20, 30, 40], and v = 42, the output should be
sumOfTwo(a, b, v) = true.
"""
func sumOfTwo(a: [Int], b: [Int], v: Int) -> Bool {
    let diff = Set(a.map { v - $0 })
    return !diff.isDisjoint(with: b)
}

//sumOfTwo(a: [1,2,3,4], b: [10,20,30,40], v: 42)


"""
Sum all the items inside the array and return as an Int
input = [1,2,3,4,10,11]
output = 31
"""
func simpleArraySum(ar: [Int]) -> Int {
    return ar.reduce(0, +)
}

simpleArraySum(ar: [1,2,3,10,4,55])






























//: [Next](@next)
