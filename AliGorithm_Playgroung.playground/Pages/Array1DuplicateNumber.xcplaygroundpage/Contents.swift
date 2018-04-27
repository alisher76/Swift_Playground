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


//: [Next](@next)
