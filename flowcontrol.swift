var optionalString: String? = "Hello"
print(optionalString == nil)
// prints false

var optionalName: String? = "me"
// this question mark marks this variable as optional
var greeting = "Hello!"
// this is the default value
if let name = optionalName {
    greeting = "Hello, \(name)"
    // if optionalName is not nil, then this block will execute
}
print("\(greeting)")

let nickName: String? = "johnny"
var fullName: String = "John Appleseed"
var informalGreeting = "Hi \(nickName ?? fullName)"
// if nickName is nil, then use fullName
print(informalGreeting)

// or we can also unwrap the value like this
if let nickName {
    print("hey, \(nickName), i'm calling you shortly")
}
// if nickName exists, this is called

let individualScores = [75, 43, 103, 87, 12]
// an int array
var teamScore = 0
// initializing a variable to store the result in
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
print(teamScore)