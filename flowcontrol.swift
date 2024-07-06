var optionalString: String? = "Hello"
print(optionalString == nil)

var optionalName: String? = nil
var greeting = "Hello!"
// this is the default value
if let name = optionalName {
    greeting = "Hello, \(name)"
    // if optionalName is not nil, then this block will execute
}
print("\(greeting)")

let nickName: String? = "heyo"
var fullName: String = "John Appleseed"
var informalGreeting = "Hi \(nickName ?? fullName)"
// if nickName is nil, then use fullName
print(informalGreeting)