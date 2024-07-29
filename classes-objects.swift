class Shape {
    // blueprint for the object
    var numberOfSides: Int = 0
    let name: String = "Shape"
    func simpleDesc() -> String {
        return "A shape with \(numberOfSides) sides."
    }
    // method
    func oddOrEven() -> Bool {
        return numberOfSides % 2 == 0
    }
    // method
}

var myShape: Shape = Shape()
// we can implement it as a type
myShape.numberOfSides = 7
print(myShape.simpleDesc())
print(myShape.name)
// this prints Shape. the current class doesn't have a name
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
// these are the initialization variables we set with the init thing
print(test.area())
print(test.simpleDesc())

class Circle: NamedShape {
    var radius: Double
    init(radius: Double, name: String) {
        self.radius = radius
        super.init(name: name)
        // the super probably comes from the superclass.
        // we pass that to the superclass because this is the NamedShape
        numberOfSides = 1
    }
    func area() -> Double {
        return 3.14159 * radius * radius
        // radius ** 2 didn't work
    }
    override func simpleDesc() -> String {
        return "A circle with a radius of \(radius) named \(name)"
    }
    // overrides the superclass's simpleDesc.
}

let testCircle = Circle(radius: 5.2, name: "Patrick")
print(testCircle.area())
print(testCircle.simpleDesc())

// we can also have getters and setters
class EquilateralTriangle: NamedShape {
    var sideLength: Double

    init (sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }

    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        set {
            sideLength = newValue / 3.0
            // if we pass something new to the perimeter we can set sidelength with it
            // newValue is the default name, how do we change this?

        }
    }

    override func simpleDesc() -> String {
        return "An equilateral triangle with sides of length \(sideLength)"
    }

}

var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
print(triangle.perimeter)
triangle.perimeter = 9.9
print(triangle.sideLength)
