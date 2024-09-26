//
//  #9SimpleCalculator.swift
//  week3
//
//  Created by Aisha Suanbekova Bakytjankyzy on 26.09.2024.
//

import Foundation

// Functions to perform the basic operations using Float
func add(_ a: Float, _ b: Float) -> Float {
    a + b
}

func subtract(_ a: Float, _ b: Float) -> Float {
    a - b
}

func multiply(_ a: Float, _ b: Float) -> Float {
    a * b
}

func divide(_ a: Float, _ b: Float) -> Float? {
    if b == 0 {
        print("Error: Division by zero is not allowed.")
        return nil
    }
    return a / b
}

// Main calculator function
func calculator() {
    var continueCalculating = true
    
    while continueCalculating {
        // Prompt user for two numbers
        print("Enter the first number:")
        guard let firstInput = readLine(), let firstNumber = Float(firstInput) else {
            print("Invalid input. Please enter a valid number.")
            continue
        }
        
        print("Enter the second number:")
        guard let secondInput = readLine(), let secondNumber = Float(secondInput) else {
            print("Invalid input. Please enter a valid number.")
            continue
        }
        
        // Prompt user to choose an operation
        print("Choose an operation: + (addition), - (subtraction), * (multiplication), / (division)")
        guard let operation = readLine() else {
            print("Invalid operation.")
            continue
        }
        
        // Perform the chosen operation and display the result
        var result: Float? = nil
        switch operation {
        case "+":
            result = add(firstNumber, secondNumber)
        case "-":
            result = subtract(firstNumber, secondNumber)
        case "*":
            result = multiply(firstNumber, secondNumber)
        case "/":
            result = divide(firstNumber, secondNumber)
        default:
            print("Invalid operation. Please choose +, -, *, or /.")
        }
        
        if let result = result {
            print("Result: \(result)")
        }
        
        // Ask the user if they want to perform another calculation
        print("Do you want to perform another calculation? (yes to continue, no to exit)")
        if let answer = readLine(), answer.lowercased() == "no" {
            continueCalculating = false
            print("Goodbye!")
        }
    }
}

// Run the calculator
calculator()
