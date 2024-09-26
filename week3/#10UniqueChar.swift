//
//  #10UniqueChar.swift
//  week3
//
//  Created by Aisha Suanbekova Bakytjankyzy on 26.09.2024.
//

import Foundation

func hasUniqueCharacters(_ text: String) -> Bool {
    var characterSet: Set<Character> = []
    
    for char in text {
        if characterSet.contains(char) {
            return false  // Character is already in the set, so it's not unique
        }
        characterSet.insert(char)
    }
    
    return true  // All characters are unique
}

// Test cases
print(hasUniqueCharacters("Hello"))     // false (because of two 'l's)
print(hasUniqueCharacters("Swift"))     // true
print(hasUniqueCharacters("abcABC"))    // true (case-sensitive check)
print(hasUniqueCharacters("AaBbCc"))    // true (case-sensitive, all unique)
