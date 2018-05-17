//: Playground - noun: a place where people can play

import UIKit

"""
Create an extension for arrays that sorts them using the bubble sort

The array [12, 5, 4, 9, 3, 2, 1] should become [1, 2, 3, 4, 5, 9, 12].
The array ["f", "a", "b"] should become ["a", "b", "f"].
The array [String]() should become [].
"""

extension Array where Element: Comparable {
    
    func sortUsingBubbleSort() -> [Element] {
        guard self.count > 0 else { return [] }
        
        var back = self
        var highestSortedIndex = count
        
        repeat {
            var lastSwappedIndex = 0
            
            for index in 0..<highestSortedIndex - 1 {
                let element = back[index]
                let next = back[index + 1]
                
                if (element > next) {
                    back.swapAt(index, index + 1)
                    lastSwappedIndex = index + 1
                }
            }
            highestSortedIndex = lastSwappedIndex
        } while highestSortedIndex != 0
        
        return back
    }
}

//var array1 = [12, 5, 4, 9, 3, 2, 1]
//print(array1.sortUsingBubbleSort())


// Insertion Sort
// Create an extension for arrays that sorts them using insertion sort Algorithm

extension Array where Element: Comparable {
    // An insertion sort creates a new sorted array by remocing items individually
    // form the input array and placing them into a new array.
    // sample input [12, 5, 4, 9, 3, 2, 1] -> sample output [1, 2, 3, 4, 3, 9, 12]
    func sortUsingInsertion() -> [Element] {
        guard count > 1 else { return self }
        
        var back = [Element]()
        
        for unsorted in self {
            if back.count == 0 {
                back.append(unsorted)
            } else {
                var placed = false
                for (index, sorted) in back.enumerated() {
                    if unsorted < sorted {
                        back.insert(unsorted, at: index)
                        placed = true
                        break
                    }
                }
                if !placed {
                    back.append(unsorted)
                }
            }
        }
        return back
    }
    
    func sortUsingInsertion2() -> [Element] {
        guard count > 1 else { return self }
        
        var back = self
        
        for i in 1..<count {
            var currentItemIndex = i
            // Take a copy of the current item
            let itemToPlace = back[currentItemIndex]
            
            // keep going around until we're at the start of the array or find an item that's greater or equal to us
            while currentItemIndex > 0 && itemToPlace < back[currentItemIndex - 1] {
                // move this item to the right
                back[currentItemIndex] = back[currentItemIndex - 1]
                currentItemIndex -= 1
            }
            // place our item into its newly sorted place
            back[currentItemIndex] = itemToPlace
        }
        return back
    }
}

//var array1 = [12, 5, 4, 9, 3, 2, 1]
//print(array1.sortUsingInsertion2())
var numbers = [1, 2, 3]
numbers += [4]





















