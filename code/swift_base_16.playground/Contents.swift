import UIKit

var greeting = "Hello, playground"

class RichMan {
    private var money: Int = 1000000
    
    private var properties: Array = ["car", "boat", "house"]
    
    internal func playGame() {
        print("RichMan plays game")
    }
    
    internal func getMoney() -> Int {
        return self.money
    }
    
    internal func getProperties() -> [String] {
        return self.properties
    }
    
    internal subscript(propertyIndex: Int) -> String? {
        if propertyIndex < 0 || propertyIndex > properties.count - 1 {
            return nil
        } else {
            return self.properties[propertyIndex]
        }
    }
}

class Tom: RichMan {
    private var hobbies = ["football", "basketball", "tabletennis"]
    
    internal func driveForFun() {
        super.playGame()
        print("Driving for fun")
    }
    
    internal func tomGetMoney() -> Int {
        return super.getMoney() + 1
    }
    
    internal func getPropertyByIndex(tomProIndex: Int) -> String {
        if tomProIndex < 0 || tomProIndex > super.getProperties().count - 1 {
            return "Wrong Index"
        } else {
            return super[tomProIndex] ?? "Wrong Index"
        }
    }
    
    internal func getHobbies() -> [String] {
        return self.hobbies
    }
}

let tom = Tom()
print(tom.playGame())
print(tom.getMoney())
print(tom.getProperties())

tom.driveForFun()
print(tom.getPropertyByIndex(tomProIndex: 2))





