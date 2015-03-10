

import Foundation

func fibonacciNumberAtIndex(index : Int) -> Int {
    var previousMinus2 = 0
    var previousMinus1 = 1
    var current = 1
    
    for i in 2...index {
        current = previousMinus2 + previousMinus1
        previousMinus2 = previousMinus1
        previousMinus2 = current
        
    }
    return current
}
