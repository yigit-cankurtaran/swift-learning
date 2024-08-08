enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }

    if password == "12345" {
        throw PasswordError.obvious
    }

    if password.count < 8 {
        return "Okay"
       } else if password.count < 10 {
           return "Good"
       } else {
           return "Excellent"
       }
}

let myString: String = "12345"
let thisShouldWork: String = "123456"

do {
    let result = try checkPassword(myString)
    print("Password rating: \(result)")
} catch {
    print("There was an error")
    let newResult: String = try checkPassword(thisShouldWork)
    print("Other password's rating: \(newResult)")
}

