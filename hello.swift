print("hello world\n")

var myVar = 42
myVar = 42
let myConst  = 50
print("the variable is \(myVar) and the constant is \(myConst)\n")

let implicitConstFloat: Float = 4.0
print("the implicit constant is \(implicitConstFloat)\n")

var fruits = ["apple", "banana", "orange"]
print(fruits[1])

let randomDict: [String : String] = ["key1": "value1", "key2": "value2"]
// both strings
print(randomDict["key1"]!)
// have to use ! here because it is an optional
// to make it a non-optional, use the following

var DictWithNumbers: [String : Int] = ["key1": 1, "key2": 2]
print(DictWithNumbers["key1"]!)