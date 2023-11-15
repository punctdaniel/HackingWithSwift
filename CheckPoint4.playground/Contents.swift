

enum PasswordError: Error{
    case highLow, noMatch
}

func root(of number:Int) throws -> String {
    guard number > 1 && number < 1000 else{
        throw PasswordError.highLow
    }
    
    for i in 1...100 {
        if number == i * i {
            return "\(i)"
        }
    }
    throw PasswordError.noMatch
}

do {
    let result = try root(of: 100)
    print("The root is \(result)")
}   catch PasswordError.highLow {
    print("Out of bounds")
}   catch PasswordError.noMatch{
    print("No Root")
}   catch {
    print("Help")
}
