import Cocoa

struct Car {
    let model: String
    let seats: Int
    let maximumGears: Int
    private(set) var gear = 1
   
    
    init(model:String, seats: Int, maximumGears: Int){
        self.model = model
        self.seats = seats
        self.maximumGears = maximumGears
    }
    
    mutating func changeGear(difference: Int) {
        gear = gear + difference
        
        if gear < 1 {
            gear = 1
        } else if gear > maximumGears {
            gear = maximumGears
        }
    }
}

var car = Car(model: "Bmw X1", seats: 5, maximumGears: 8)
car.changeGear(difference: 3)
print(car.gear)

