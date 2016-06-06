// Rick Stoner - Class 01
import CoreFoundation

func stringToNumber(number: String) -> Int? {
    return Int(number)
}

stringToNumber("other")
stringToNumber("4")

func stringInterpolation(code: Int, message: String) -> String {
    return "\(code): " + message
}

stringInterpolation(401, message: "Error, could not load.")

func characterCount(phrase: String) -> String {
    let characterCount = phrase.characters.count
    return "String contains \(characterCount) characters"
}

characterCount("How many characters are in this phrase?")

func reverseString(phrase: String) -> String {
    var stringReversed = ""
    for character in phrase.characters {
        stringReversed.insert(character, atIndex: stringReversed.startIndex)
        print(character)
    }
    return stringReversed
}

reverseString("hello")
reverseString("hannah")


var greetings: (String) -> String
greetings = {(name) -> String in
    return "Greetings, \(name)"
}
greetings("")
