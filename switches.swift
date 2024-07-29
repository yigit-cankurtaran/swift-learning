func veggieCheck(veggie: String) -> String {
switch veggie {
    // running the statement on the vegetable var
    case "celery":
        return "blahblahblah"
    // if vegetable is celery run this
    case "cucumber", "watercress":
        return "foo"
    case let x where x.hasSuffix("pepper"):
    // we use let here but var works too hmmm
        return "Is it a spicy \(x)?"
    default:
        return "bar"
    }
}

print(veggieCheck(veggie: "red pepper"))
print(veggieCheck(veggie: "cucumber"))
print(veggieCheck(veggie: "tomato"))