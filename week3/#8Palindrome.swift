//
//  #8Palindrome.swift
//  week3
//
//  Created by Aisha Suanbekova Bakytjankyzy on 26.09.2024.
//

import Foundation

import Foundation

func isPalindrome(_ text: String) -> Bool {
    // Remove spaces and punctuation, and convert to lowercase
    let cleanedText = text.lowercased().filter { $0.isLetter }
    
    // Check if cleanedText is the same when reversed
    return cleanedText == String(cleanedText.reversed())
}

// Test cases
print(isPalindrome("A man, a plan, a canal: Panama"))  // true
print(isPalindrome("racecar"))                         // true
print(isPalindrome("Hello, World!"))                   // false
