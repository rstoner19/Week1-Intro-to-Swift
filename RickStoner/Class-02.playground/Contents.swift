
//*** Write a function that takes in an array of strings, checks if array contains “Earth”, if not, adds it otherwise returns ***///

var arrayWithoutEarth = ["Mars", "Mercury", "Venus"]
var arrayWithEarth = ["Earth", "Jupiter"]

func containsEarth (inout array: [String]) -> [String] {
    if !array.contains("Earth") {
        array.append("Earth")
    }
    return array
}

let willContainEarth = containsEarth(&arrayWithoutEarth)
let alreadyContainEarth = containsEarth(&arrayWithEarth)



//***Use reduce to create single string from the above array. [“Venus”, “Earth”] would produce “Venus, Earth” ***////

willContainEarth.reduce("") {(results, planet) -> String in
    return results + " " + planet
}

//***** Declare and implement a dictionary that can contain as values Strings, Ints, etc *****/////

var exampleDictionaryDeclaration = [String : Int]()
exampleDictionaryDeclaration["two"] = 2



let stateCapitals = ["Washington" : "Olympia", "Oregon" : "Salem", "California" : "Sacramento", "Nevada" : "Carson City"]
stateCapitals["Washington"]


//***** Declare a dictionary of string values. Declare a function that takes in a string and searches dictionary for it. Use filter ******//
// Dictinoary of string values declared above in stateCapitals

func searchDictionary (searchValue: String, dictionary: [String : String]) {
    dictionary.filter { (key: String, value: String) -> Bool in
        return value == searchValue || key == searchValue
    }
}

searchDictionary("Olympia", dictionary: stateCapitals)


//***** Write examples for union, intersect, subtract, exclusive Or set operations *****///

let setOne: Set = [0, 6, 3, 87, 1, 4]
let setTwo: Set = [1, 8, 4 ,20]

let unionSet = setOne.union(setTwo)
let intersectSet = setOne.intersect(setTwo)
let subtractSet = setOne.subtract(setTwo)
let exclusiveSet = setOne.exclusiveOr(setTwo)

// Write a function that counts repeating words and prints out the count of each

let arrayRepeatingStrings = ["hello", "what", "how", "how", "how", "what", "hello", "why"]

func duplicateCount (phrase: [String]) -> [String : Int] {
    let uniqueWords = Set(phrase)
    var results = [String : Int]()
    for keyWord in uniqueWords {
        var count = 0
        for word in phrase {
            if keyWord == word {
                count += 1
                results[keyWord] = count
            }
        }
    }
    return results
}
duplicateCount(arrayRepeatingStrings)


// Add two numbers without using “+”
//** NOTE, this is extremely inefficient, but uses no "+" if you use larger values it'll take some time **//

let numOne = 15
let numTwo = 5

func additionWithoutSymbol(numOne: Int, numTwo: Int) -> Int {
    var array = [Int]()
    if numOne < numTwo {
        for index in -numOne..<numTwo {
            array.append(index)
        }
    } else {
        for index in -numTwo..<numOne {
            array.append(index)
        }
    }
    return array.count
}

additionWithoutSymbol(numOne, numTwo: numTwo)


