//
//  main.swift
//  week3
//
//  Created by Aisha Suanbekova Bakytjankyzy on 20.09.2024.
//

import Foundation

//problem 1. FizzBuzz

for i in 1...100 {
    
    if i%3==0 && i%5==0{
        print("FizzBuzz")
    }
    else if i%3 == 0{
        print("Fizz")
    }
    else if i%5 == 0{
        print("Buzz")
    }
    else { print(i)}
}


//Problem 2. Prime Numbers

func isPrime(_ number: Int) -> Bool {
    guard number > 1 else { return false }
    for i in 2..<Int(sqrt(Double(number))) + 1 {
        if number % i == 0 {
            return false
        }
    }
    return true
}

for i in 1...100 {
    if isPrime(i){
        print(i)
    }
}


//Problem 3. Temperature Converter

func toCelsius (number: Float) -> (fahrenheit: Float, kelvin: Float) {
    let fahrenheit = (number * 9/5) + 32
    let kelvin = number + 273.15
    return (fahrenheit, kelvin)
}

func toFahrenheit (number: Float) -> (celsius: Float, kelvin: Float) {
    let celsius = (number - 32) * 5/9
    let kelvin = celsius + 273.15
    return (celsius, kelvin)
}

func toKelvin (number: Float) -> (fahrenheit: Float, celsius: Float) {
    let celsius = number - 273.15
    let fahrenheit = (celsius * 9/5) + 32
    return (celsius, fahrenheit)
}

print("Enter a temperature value:")
if let input = readLine(), let temperatureValue = Float(input) {
    print("Specify the unit (C for Celsius, F for Fahrenheit, K for Kelvin):")
    if let unit = readLine()?.uppercased() {
        switch unit {
        case "C":
            let (fahrenheit, kelvin) = toCelsius(number: temperatureValue)
            print("\(temperatureValue) °C is \(fahrenheit) °F and \(kelvin) K.")
        case "F":
            let (celsius, kelvin) = toFahrenheit(number: temperatureValue)
            print("\(temperatureValue) °F is \(celsius) °C and \(kelvin) K.")
        case "K":
            let (celsius, fahrenheit) = toKelvin(number: temperatureValue)
            print("\(temperatureValue) K is \(celsius) °C and \(fahrenheit) °F.")
        default:
            print("Invalid unit. Please enter C, F, or K.")
        }
    } else {
        print("Invalid unit input.")
    }
} else {
    print("Invalid temperature input.")
}
