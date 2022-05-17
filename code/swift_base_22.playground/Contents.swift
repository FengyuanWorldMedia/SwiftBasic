import UIKit

var greeting = "Hello, playground"

// Chekced Version
class RichMan {
    private var money: Int = 1000000
    
    init() {
        
    }
    
    func getMoney() -> Int {
        return self.money
    }
}

let richMan = RichMan()
print(richMan.getMoney())

extension RichMan {
    var donatedMoney: Float {
        Float(money) * 0.3
    }
}

print(richMan.donatedMoney)

extension RichMan {
    func getDonatedMoney() -> Float {
        Float(money) * 0.3
    }
}

print(richMan.getDonatedMoney())

extension RichMan {
    class func playGame() {
        print("class func playGame")
    }
}

RichMan.playGame()

extension RichMan {
    convenience init(money: Int) {
        self.init()
        self.money = money
    }
}

let richMan2 = RichMan(money: 500000)
print(richMan2.getDonatedMoney())

extension RichMan {
    subscript(propertyName: String) -> Int {
        if propertyName == "money" {
            return self.money
        } else {
            return -1
        }
    }
}

print(richMan2["money"])
print(richMan2["money2"])

extension RichMan {
    struct BaseInfo {
        var teleNo: String
    }
    
    func getTelNo() -> String {
        let baseInfo = BaseInfo(teleNo: "999888777")
        return baseInfo.teleNo
    }
}

print(richMan2.getTelNo())



struct RichManStruct {
    private var money: Int = 1000000
    
    init() {
        
    }
    
    func getMoney() -> Int {
        return self.money
    }
}

extension RichManStruct {
    var donateMoney: Float {
        Float(money) * 0.3
    }
}

let richManStruct = RichManStruct()

richManStruct.donateMoney
