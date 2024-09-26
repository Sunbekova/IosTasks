//
//  #Fibonacci.swift
//  week3
//
//  Created by Aisha Suanbekova Bakytjankyzy on 26.09.2024.
//

import Foundation

//Problem 6. Fibonacci

func fibonacci(_ n: Int) -> [Int] {
    // Handle cases where n is less than or equal to zero
    if n <= 0 {
        return []
    }
    
    // Handle the case where n is 1
    if n == 1 {
        return [0]
    }
    
    // Initialize the Fibonacci sequence with the first two numbers
    var sequence = [0, 1]
    
    // Use a loop to calculate the rest of the Fibonacci sequence
    for i in 2..<n {
        let nextNumber = sequence[i - 1] + sequence[i - 2]
        sequence.append(nextNumber)
    }
    
    return sequence
}

// Test cases
let n = 10
print("First \(n) numbers of Fibonacci sequence: \(fibonacci(n))")
