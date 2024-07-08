func fizzbuzz(i: Int, rules: [(Int, String)] = [(3, "Fizz"), (5, "Buzz")]){
    // default of rules is [(3, "Fizz"), (5, "Buzz")]
    for num in 1...i {
        var output: String = ""
        for rule in rules {
            if num % rule.0 == 0 {
                output += rule.1
            }
        }
        if output == "" {
            output = String(num)
        }
        print(output)
    }
}

fizzbuzz(i: 100)