import Foundation

enum NumberErrors: Error {
    case OutOfBounds, NoRoot
}

func getSquareRoot(number: Int) throws -> String {
    if number < 1 || number > 10_000 {
        throw NumberErrors.OutOfBounds
    }

    let toGetRoot = Double(number)
    let result = sqrt(toGetRoot)

    if result.isNaN {
        throw NumberErrors.NoRoot
    }

    return String(result)
}

do {
    let numberWePass: Int = 300;
    let toPrint = try getSquareRoot(number: numberWePass)

    print("the square root of \(numberWePass) is: \(toPrint)")   
} catch {
    print("There was an error.")
}