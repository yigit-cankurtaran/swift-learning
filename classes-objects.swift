class Shape {
    var numberOfSides: Int = 0
    let name: String = "Shape"
    func simpleDesc() -> String {
        return "A shape with \(numberOfSides) sides."
    }
    func oddOrEven() -> Bool {
        return numberOfSides % 2 == 0
    }
}

var myShape: Shape = Shape()
// we can implement it as a type
myShape.numberOfSides = 7
print(myShape.simpleDesc())
print(myShape.name)
print(myShape.oddOrEven())

class NamedShape {
    var numberOfSides: Int = 0
    var name: String
    init(name: String) {
        self.name = name
    }
    func simpleDesc() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

var myNamedShape: NamedShape = NamedShape(name: "Robert")
myNamedShape.numberOfSides = 7
print(myNamedShape.simpleDesc())
print("The new shape's name is \(myNamedShape.name)")

class Square: NamedShape {
    var sideLength: Double
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    func area() -> Double {
        return sideLength * sideLength
    }
    override func simpleDesc() -> String {
        return "A square with sides of length \(sideLength) named \(name)."
    }
}

let test = Square(sideLength: 5.2, name: "Spongebob")
print(test.area())
print(test.simpleDesc())

class Circle: NamedShape {
    var radius: Double
    init(radius: Double, name: String) {
        self.radius = radius
        super.init(name: name)
        numberOfSides = 1
    }
    func area() -> Double {
        return 3.14159 * radius * radius
        // radius ** 2 didn't work
    }
    override func simpleDesc() -> String {
        return "A circle with a radius of \(radius) named \(name)"
    }
}

let testCircle = Circle(radius: 5.2, name: "Patrick")
print(testCircle.area())
print(testCircle.simpleDesc())