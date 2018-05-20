//: [Previous](@previous)

import Foundation
"""
You are climbing a staircase that has n steps.
You can take the steps either 1 or 2 at a time.
Calculate how many distinct ways you can climb to the top of the staircase.

Example

For n = 1, the output should be
climbingStairs(n) = 1;

For n = 2, the output should be
climbingStairs(n) = 2.
"""
func climbingStairs(n: Int) -> Int {
    var back:[Int] = []
    back.append(1)
    back.append(1 + back[0])
    back.append(1 + back[1] + back[0])
    
    if(n > 3) {
        for i in (0...n+1) {
            back[(i - 1) % 3] = back.reduce(0,+)
        }
    }
    return back[(n - 1) % 3]
}
//climbingStairs(n: 2)
"""
Find the median: Write a fnuction that accepts an array of Int and returns average or nil if there are no values.

The mean average is the sum of some numbers divided by how many there are.
The median average is the middle of a sorted list. If there is no single
middle value – e.g. if there are eight numbers - then the median is the
mean of the two middle values.

Exaple:
The code [1, 3, 5, 7, 9].challenge41() should return 5
The code [1, 2, 3, 4].challenge41() should return 2.5
"""

func findTheMedian(input: [Int]) -> Double? {
    // Sort the items so we can find the center point
    let sorted = input.sorted()
    let middle = sorted.count / 2
    
    if sorted.count % 2 == 0 {
        // return average of two center items
        return Double(sorted[middle] + sorted[middle - 1]) / 2
    } else {
        // return the single center item
        return Double(sorted[middle])
    }
}
// findTheMedian(input: [1, 3, 5, 7, 9]) == 5

//: [Next](@next)
