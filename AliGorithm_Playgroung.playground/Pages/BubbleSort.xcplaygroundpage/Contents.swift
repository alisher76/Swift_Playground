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

var array1 = [12, 5, 4, 9, 3, 2, 1]
print(array1.sortUsingBubbleSort())


