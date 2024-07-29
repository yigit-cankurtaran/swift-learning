func greet(person: String, todaySpecial: String) -> String {
    return "Hello \(person), today's special is \(todaySpecial)."
}

print(greet(person: "Bob", todaySpecial: "String Beans"))

func greet(hello person: String) -> String {
    // custom name for the first parameter
    return "Hello \(person)"
    // here we call it with the default name
}
print(greet(hello: "Alice"))
// we initialize it with the custom name

func zeroForOdds(numbers: [Int]) -> String {
    var result = ""
    for i: Int in numbers {
        if i % 2 != 0 {
            result += "0\n"
        } else {
            result += String(i) + "\n"
        }
    }
    return result
}
print(zeroForOdds(numbers: [1, 2, 3, 4]))

// functions can return other functions
func makeIncrementer () -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}

var increment = makeIncrementer()
print("incremented number is \(increment(7))")

// functions can take other functions as arguments
func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
    // if anything satisfies this return true, else return false
}

func lessThanTen(number: Int) -> Bool {
    return number < 10
}

var numbers = [20, 19, 7, 12]
print(hasAnyMatches(list: numbers, condition: lessThanTen))
// hasAnyMatches runs the condition on every item
// so we don't need to pass it explicitly here
// the function calls it with like lessThanTen(20) anyway.

print(numbers.map({ (number: Int) -> Int in 
// in to separate the arguments and return type
let result = 3 * number 
return result
}))

let mappedNumbers = numbers.map({number in 3 * number})
print(mappedNumbers)
// shorter version of the above
