import UIKit

var greeting = "Hello, playground"

class RichMan: CharityProtocol {
    private var money: Int = 1000000
    
    var donatedMoney: Float {
        return Float(money) * 1/3
    }
    
    func getMoney() -> Int {
        return self.money
    }
    
    //
    func participateActivity(name: String) -> Void {
        print("richman has join Activity")
    }
    
    static func driving() -> Void {
        print("BMW driving")
    }
    
    required init(clubLabel: String) {
        print(clubLabel)
    }
    
    init() {
        
    }
}

class PoorMan: CharityProtocol {
    private var money: Int = 500
    var donatedMoney: Float = 1.0
    
    func participateActivity(name: String) -> Void {
        self.money -= 1
        print("poorman has join Activity")
    }
    
    static func driving() -> Void {
        print("BYD driving")
    }
    
    required init(clubLabel: String) {
        print(clubLabel)
    }
    
    init() {
        
    }
    
}

class CharityClub {
    private var members = [CharityProtocol]()
    
    func addMember(man: CharityProtocol) {
        self.members.append(man)
    }
}

protocol CharityProtocol {
    var donatedMoney: Float {get}
    func participateActivity(name: String) -> Void
    static func driving() -> Void
    init(clubLabel: String)
    func hasChildren() -> Bool
}

extension CharityProtocol {
    func hasChildren() -> Bool {
        return false
    }
}

let club = CharityClub()

let richMan = RichMan()
let poorMan = PoorMan()

richMan.hasChildren()
poorMan.hasChildren()

club.addMember(man: richMan)
club.addMember(man: poorMan)

class Person {
    private var clubLabel: String
    private var money: Int = 200000
    required init(clubLabel: String) {
        self.clubLabel = clubLabel
    }
}

extension Person: CharityProtocol {
    var donatedMoney: Float {
        return Float(money) * 1/3
    }
    
    func participateActivity(name: String) -> Void {
        print("Person has join Activity")
    }
    
    static func driving() -> Void {
        print("Person BMW driving")
    }
}

let person = Person(clubLabel: "superman")
club.addMember(man: person)

protocol NewCharityProtocol: CharityProtocol {
    var donatedMoney2: Float {get}
}

