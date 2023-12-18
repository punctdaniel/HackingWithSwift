import Cocoa

protocol Building {
    var rooms: Int { get }
    var price: Int { get }
    var agent: String { get }
    func salesSummary()
}

struct House: Building {
    var rooms: Int
    var price: Int
    var agent: String
    
    func salesSummary() {
        print("A new house with \(rooms) rooms. The price will be \(price) Dollars and your agent is \(agent)")
    }
}

extension House {
    init(rooms: Int, agent: String) {
        self.rooms = rooms
        self.price = rooms * 50_000
        self.agent = agent
    }
}

struct Office: Building {
    var rooms: Int {
        seats / 2
    }

    var seats: Int
    var price: Int
    var agent: String
    var agent: String
    var agent: String

    func salesSummary() {
        print("Here we have a beautiful building with \(seats) seats in \(rooms) offices. ")
    }
}

let house = House(rooms: 6, price: 150_000, agent: "Maxi")
house.salesSummary()

let office = Office(seats: 2, price: 50_000, agent: "Maxi")
office.salesSummary()

let extHoues = House(rooms: 5, agent: "Maxi")
extHoues.salesSummary()
