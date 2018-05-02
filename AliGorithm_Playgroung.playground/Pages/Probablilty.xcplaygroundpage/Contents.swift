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
climbingStairs(n: 2)

//: [Next](@next)
