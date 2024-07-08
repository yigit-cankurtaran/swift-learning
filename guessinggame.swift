func guessingGame(maxTries: Int = 5, maxNumber: Int = 100){
    let randomNumber = Int.random(in: 1...maxNumber)
    var guessed: Bool = false
    var tries: Int = 0

    while !guessed && tries < maxTries {
        print("Guess a number between 1 and \(maxNumber): \n")
        guard let guess = Int(readLine() ?? "") else {
            print("Please enter a valid number.")
            continue
        }
        // guard is for an early exit
        // used for validation and error handling
        // here it checks if input can be converted to an int

        // readLine() reads user input in the console
        // returns optional string, it can be nil or a string
        // ?? is the nil coalescing operator
        // it returns the value on the left if it's not nil
        // otherwise it returns the value on the right

        // Int() converts a string to an integer
        // it returns an optional integer

        while tries < maxTries {
        if guess == randomNumber {
            print("You guessed the number! It's \(randomNumber)!")
            guessed = true
            break
        } else if guess < randomNumber {
            print("Higher!")
            tries += 1
            break
        } else {
            print("Lower!")
            tries += 1
            break
        }
    }
}
    if !guessed {
        print("You ran out of tries! The number was \(randomNumber).")
    }
}

guessingGame(maxTries: 3)