//
//  #7GradeCalculator.swift
//  week3
//
//  Created by Aisha Suanbekova Bakytjankyzy on 26.09.2024.
//

import Foundation


// Function to calculate average score
func calculateAverage(scores: [Int]) -> Double {
    let total = scores.reduce(0, +)
    return Double(total) / Double(scores.count)
}

// Function to process student scores and display results
func gradeCalculator() {
    // Dictionary to store student names and their corresponding scores
    var studentScores: [String: Int] = [:]
    
    // Input number of students
    print("Enter the number of students:")
    guard let numberOfStudentsInput = readLine(), let numberOfStudents = Int(numberOfStudentsInput), numberOfStudents > 0 else {
        print("Invalid number of students.")
        return
    }
    
    // Input student names and scores
    for i in 1...numberOfStudents {
        print("Enter the name of student \(i):")
        let name = readLine() ?? "Unknown"
        
        print("Enter the score for \(name):")
        if let scoreInput = readLine(), let score = Int(scoreInput) {
            studentScores[name] = score
        } else {
            print("Invalid score input for \(name).")
            return
        }
    }
    
    // Extract scores and calculate average, highest, and lowest
    let scores = Array(studentScores.values)
    let averageScore = calculateAverage(scores: scores)
    let highestScore = scores.max() ?? 0
    let lowestScore = scores.min() ?? 0
    
    // Display results
    print("\n--- Student Scores ---")
    for (name, score) in studentScores {
        let status = score >= Int(averageScore) ? "Above Average" : "Below Average"
        print("\(name): \(score) (\(status))")
    }
    
    print("\n--- Summary ---")
    print("Average Score: \(averageScore)")
    print("Highest Score: \(highestScore)")
    print("Lowest Score: \(lowestScore)")
}

// Run the grade calculator
gradeCalculator()
