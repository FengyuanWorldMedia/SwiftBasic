import UIKit

var greeting = "Hello, playground"
class RichMan {
    
    private var money : Int = 1000000
    
    init() {
        
    }
    
    init(money: Int) {
        self.money = money
    }
    
    var totalMoney: Int {
        get {
            return self.money * 2
        }
        set(val){
            self.money = val / 2
        }
    }
    
    final func getRules() -> String {
        return "rules"
    }
    
    private var properties : Array = ["car", "boat", "house"]
    // overload
    internal func playGame() {
        print("RichMan plays game")
    }
    
    internal func playGame(gameName: String) {
        print("RichMan plays game: \(gameName)")
    }
    
    internal func playGame(gameName: String, count: Int) {
        print("RichMan plays game: \(gameName), count: \(count)")
    }
    
    internal func getMoney() -> Int {
        return self.money
    }
    
    internal func getPropertis() -> [String] {
        return self.properties
    }
    
    internal subscript(propertyIndex : Int ) -> String? {
        if propertyIndex < 0 || propertyIndex > properties.count - 1 {
            return nil
        } else {
            return self.properties[propertyIndex]
        }
    }
    
    class func hunting() {
        print("Rich men like hunting")
    }
    
    class func hunting(place: String) {
        print("Rich men like hunting at \(place)")
    }
}

let richMan = RichMan()
richMan.playGame()
richMan.playGame(gameName: "yuanshen")
richMan.playGame(gameName: "yuanshen", count: 5)

RichMan.hunting()
RichMan.hunting(place: "park")

class Tom : RichMan {
    override init() {
        super.init()
    }
    
    override init(money: Int) {
        super.init(money: money)
        self.totalMoney = money + 100
    }
    
    private var hobbies = ["football", "basketball", "tabletennis"]
    
    override var totalMoney: Int {
        get {
            return super.totalMoney / 2
        }
        set(val){
            super.totalMoney = val * 2
        }
    }
    
    
    internal func driveForFun() {
        super.playGame()
        print("Driving for fun")
    }
    
    internal override func getMoney() -> Int {
        
        return super.getMoney() + 1
    }
    
    internal override subscript(propertyIndex : Int ) -> String {
        if propertyIndex < 0 || propertyIndex > super.getPropertis().count - 1 {
            return "no properties"
        } else {
            return "Tom 's" + super[propertyIndex]!
        }
    }
    
    internal func getHobbies() -> [String] {
        return self.hobbies
    }
    
}

print(richMan[2])


let tom = Tom()

print(tom.getMoney())
print(tom.getPropertis())
tom.playGame()
print(tom[2] ?? "")
tom.driveForFun()
tom.getRules()

