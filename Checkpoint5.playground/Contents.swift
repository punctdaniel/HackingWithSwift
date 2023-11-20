import Cocoa

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

let oddsOnly = luckyNumbers.filter {luckyNumbers in
    if luckyNumbers.isMultiple(of: 2){
        return false
    }
    return true
}

let oddSorted = oddsOnly.sorted()
let order: [()] = oddSorted.map() {
    print ($0,"is a lucky number")
}

order
