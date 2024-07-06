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
        if i > 0 && i % 2 == 0 && i != 1 {
            result += "0\n"
        } else {
            result += String(i) + "\n"
        }
    }
    return result
}
print(zeroForOdds(numbers: [1, 2, 3, 4]))
