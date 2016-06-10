//: Playground - noun: a place where people can play

import UIKit

// - Given an array of strings find and return all palindromes


func isPalindrome (phrase: [String]) -> [String] {
    var palindrome = [String]()
    for word in phrase {
        var reversedWord =  String()
            for character in word.characters {
                reversedWord.insert(character, atIndex: reversedWord.startIndex)
            }
        if word == reversedWord {
            palindrome.append(word)
        }
    }
    return palindrome
}

let palindromeTestArray = ["mom", "hannah", "nope", "still no", "racecar"]
let palindromes = isPalindrome(palindromeTestArray)

// Implement base 16 conversion functions: Meaning convert from base 10 to base 16

var remainderConvert: [Int : String] = [
    10 : "A",
    11 : "B",
    12 : "C",
    13 : "D",
    14 : "E",
    15 : "F"
]

func baseSixteen(baseTen: Int) -> String {
    var result = String()
    var wholeDivisor = Int(baseTen/16)
    let remainder = baseTen % 16
    
    while wholeDivisor > 0 {
        let remainder = wholeDivisor % 16
        
        wholeDivisor = Int(wholeDivisor/16)
        if let converted = remainderConvert[remainder] {
            result.insert(Character(converted), atIndex: result.startIndex)
        } else {
            result.insert(Character("\(remainder)"), atIndex: result.startIndex)
        }
    }
    
    if let converted = remainderConvert[remainder] {
        result.append(Character(converted))
    } else {
        result.append(Character("\(remainder)"))
    }
    return result
}

let hex = String(10600, radix: 16)
baseSixteen(10600)

// Convert Roman Numerals to base 10

var romanNumerals: [String : Int] = [
    "I" : 1,
    "V" : 5,
    "X" : 10,
    "L" : 50,
    "C" : 100,
    "D" : 500,
    "M" : 1000
]
let test = romanNumerals["I"]

func romanToBaseTen (romanNumber: String) -> Int? {
    var convertedNumerals = [Int]()
    for numeral in romanNumber.characters {
        if let number = romanNumerals[String(numeral)]{
            convertedNumerals.append(number)
        } else {
        return nil
        }
    }
    
    let results = convertedNumerals.reduce(0) {
        (num1, num2)-> Int in
        if num2 > num1 {
            return num2 - num1
        } else {
            return num1 + num2
        }
    }
    return results
}

romanToBaseTen("CMV")
