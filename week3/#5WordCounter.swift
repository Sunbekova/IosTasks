//
//  #5WordCounter.swift
//  week3
//
//  Created by Aisha Suanbekova Bakytjankyzy on 26.09.2024.
//

import Foundation

//Problem 5. Word Counter

func wordFrequencyCounter() {
    print("Enter a sentence:")
    
    //input from the user
    if let sentence = readLine() {
        
        // Remove punctuation and make the sentence lowercase
        let cleanedSentence = sentence.lowercased().components(separatedBy: CharacterSet.punctuationCharacters).joined()
        
        // Split the sentence into words
        let words = cleanedSentence.split(separator: " ").map { String($0) }
        
        // Dictionary to store word-frequency pairs
        var wordFrequency: [String: Int] = [:]
        
        // Loop through each word and count its frequency
        for word in words {
            if wordFrequency[word] != nil {
                wordFrequency[word]! += 1
            } else {
                wordFrequency[word] = 1
            }
        }
        
        // Display the word frequencies
        print("\nWord Frequencies:")
        for (word, frequency) in wordFrequency {
            print("\(word): \(frequency)")
        }
    }
}

// Run the word frequency counter
wordFrequencyCounter()
