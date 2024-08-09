struct Car {
    let model: String
    let seatNumber: Int
    var currentGear: Int

    mutating func gearSwitch(command: String) {
        if command.lowercased() == "up" && currentGear <= 9 {
            print("gearing up")
            currentGear = currentGear + 1
        } else if command.lowercased() == "down" && currentGear >= 2 {
            print("gearing down")
            currentGear = currentGear - 1
        } else {
            print("wrong input")
        }
    }
}

var FooBar = Car(model: "String", seatNumber: 5, currentGear: 6)
print(FooBar.currentGear)
FooBar.gearSwitch(command: "up")
FooBar.gearSwitch(command: "up")
print(FooBar.currentGear)