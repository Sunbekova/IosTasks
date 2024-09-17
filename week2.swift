//
//  week2.swift
//  helloWorld
//
//  Created by Aisha Suanbekova Bakytjankyzy on 13.09.2024.
//

import Foundation


//lvl 1:

//task1
var fruitBasket: [String] = ["apple", "banana", "peach", "cherry", "grape"]
let getElement = fruitBasket[2]
print(getElement)

//task2
var favNumbers: Set<Int> = [3, 7, 28, 1]
print(favNumbers)
print(favNumbers.insert(4))

//task3
var codeLanguage: Dictionary<String, Int> = ["Swift": 2014, 
                                             "C++": 1985,
                                             "Kotlin": 2016,
                                             "Java": 1995]

if let swiftYear = codeLanguage["Swift"]{
    print("Swift was released in \(swiftYear).")
} else {
    print("Swift is not in Dictionary")
}

//task4
var colorArr: [String] = ["white", "black", "red", "navy blue"] //don't want to use rgb color code (I'm lazy)
print(colorArr)
colorArr[1] = "tan"
print(colorArr)


//lvl 2:

//task1
var set1: Set<Int> = [1, 2, 3, 4]
var set2: Set<Int> = [3, 4, 5, 6]
let intersectionSet: Set<Int> = set1.intersection(set2)
print(intersectionSet)

//task2
var scoreDict: [String: Int] = ["Johan Liebert": 90,
                                "47 Teresa-Clare": 85,
                                "Yamaguchi Kumiko": 80]
print(scoreDict)
scoreDict["47 Teresa-Clare"] = 82
print(scoreDict)
scoreDict.updateValue(70, forKey: "Yamaguchi Kumiko")//second version
print(scoreDict)

//task3
var arr1: [String] = ["apple", "banana"]
var arr2: [String] = ["cherry", "date"]
let mergedArr: [String] = arr1 + arr2
print(mergedArr)
arr1.append(contentsOf: arr2) //second version
print(arr1)


//lvl 3

//task1
var countryDict: [String: Float] = ["Kazakhstan": 19.62,
                                    "Turkey": 84.98,
                                    "India": 1417] //results of 2022. Population in million
countryDict["China"] = 1412
print(countryDict)

//task2
var setOne: Set<String> = ["cat", "dog"]
var setTwo: Set<String> = ["dog", "mouse"]
let unionSet = setOne.union(setTwo)
print(unionSet)

let finalSet = unionSet.subtracting(setTwo)
print(finalSet)

//task3
var nestedCollection: Dictionary<String, [Int]> = ["Johan Liebert": [90, 75, 80],
                                                   "47 Teresa-Clare": [85, 82, 60],
                                                   "Yamaguchi Kumiko": [80, 60, 70]]
let secondScore = nestedCollection["Johan Liebert"]?[1]
print("Johan Liebert's second grade is \(secondScore ?? -1)")
/*
 part ["Johan Liebert"]?[1] says is Student in dict and has 2 elements in arr.
 Sign '?' means optional
 
 part 'secondScore ?? -1' ==
 'if secondScore{
    print(secondScore)
 } else{
    print(-1) } '
 -1 like nil
*/
