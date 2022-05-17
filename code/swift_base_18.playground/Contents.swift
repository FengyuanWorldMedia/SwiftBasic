import UIKit

var greeting = "Hello, playground"

class RichMan {
    private var money: Int = 100000
    private var boat: String?
    
    init() {
        self.boat = ""
    }
    
    init(boatName: String) {
        self.boat = boatName
    }
    
    //
    private func doDeinit() {
        print("doDeinit")
    }
    
    deinit {
        self.money = 0 //清理工作
        self.doDeinit()
        print("do deinit")
    }
}

var richman: RichMan? = RichMan()
richman = nil

func test() {
    let richman2 = RichMan()
}
test()
