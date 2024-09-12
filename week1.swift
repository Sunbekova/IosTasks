//
//  main.swift
//  helloWorld
//
//  Created by Aisha Suanbekova Bakytjankyzy on 06.09.2024.
//

import Foundation

//task 1

var firstName: String = "Aisha"
var lastName: String = "Suanbekova"
var age: Int = 19
var birthYear: Int = 2005
var isStudent: Bool = true
var height: Double = 1.63

var favouriteColour: String = "white"

//bonus:
let currentYear: Int = 2024
var calculateMyAge = currentYear - birthYear

print("Students age \(calculateMyAge)")


//task 2
var hobby: String = "Doing nothing. Read manga & draw"
var numberOfHobbies: Int = 3
var favoriteNumber: Int = 3
var isHobbyCreative: Bool = false


//task 3
var lifeStory: String {
    var story = "My name is \(firstName) \(lastName). I am \(age) years old, born in \(birthYear). I'm \(height)m tall."
    if isStudent {
        story += "I am currently a student. "
    }
    story += "I enjoy \(hobby)"
    
    if isHobbyCreative {
        story += ", which is a creative hobby."
    }
    
    story += "I have \(numberOfHobbies) hobbies in total, and my favorite number is \(favoriteNumber), then I like \(favouriteColour) colour and I dress \(favouriteColour) clothes as much as possible."
    return story
}

print(lifeStory)

//bonus
var futureGoals: String = "I want to finish this course with 'A' ('A+' optional)."
var 😀 = "🤓"

print(futureGoals, 😀)



//bonus from task 1 by using Date:

//make func to calculate age:
func calculateAge( birthDate: Date) -> Int? {
    let calendar = Calendar.current
    let now = Date()
    
    let components = calendar.dateComponents([.year], from: birthDate, to: now)
    return components.year
}

//using function
let birthDateComponents = DateComponents(year: 2005, month: 03, day: 28)
let calendar = Calendar.current

if let birthDate = calendar.date(from: birthDateComponents) {
    if let currentAge = calculateAge(birthDate: birthDate){
        print("Ваш возраст: \(currentAge) лет")
    } else { print("ошибка")}
        
} else {
    print("Не удалось вычислить дату рождения.")
}
