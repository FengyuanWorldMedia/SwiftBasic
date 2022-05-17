import UIKit

var greeting = "Hello, playground"

let strArr = Array<String>()
let intArr = Array<Int>()

struct BaseInfo {
    var name: String
}

let baseInfoArr = Array<BaseInfo>()
//

func getIntTypeName(dataType: Int.Type) {
    print(dataType)
}

func getStringTypeName(dataType: String.Type) {
    print(dataType)
}

func getDoubleTypeName(dataType: Double.Type) {
    print(dataType)
}

getIntTypeName(dataType: Int.self)
getStringTypeName(dataType: String.self)
getDoubleTypeName(dataType: Double.self)


///   1  ------  Int
///   Int ------   Int.Type
///
func getTypeName<T>(dataType: T.Type) {
    print(dataType)
}

getTypeName(dataType: Int.self)
getTypeName(dataType: String.self)
getTypeName(dataType: Double.self)

func getTypeNameByValue<T>(_ data: T) {
    let t = type(of: data as Any)
    print(t)
}

getTypeNameByValue("String")
getTypeNameByValue(1)
getTypeNameByValue(1.5)

func getTypeNameByValue2<T, E>(_ data1: T, _ data2: E) {
    let t = type(of: data1 as Any)
    print(t)
    
    let e = type(of: data2 as Any)
    print(e)
}

getTypeNameByValue2("String", 1)
getTypeNameByValue2(1, "String")
getTypeNameByValue2(1.5, 1.5)

class RichMan<p> {
    private var property: p
    
    func getProperty() -> p {
        return self.property
    }
    
    init(p: p) {
        self.property = p
    }
}

struct House {
    var name = "House"
}

struct Car {
    var name = "Car"
}

let richMan = RichMan(p: House())
print(richMan.getProperty().name)

let richMan2 = RichMan(p: Car())
print(richMan2.getProperty().name)

protocol PropertyProtocol {
    init()
}

struct House2: PropertyProtocol {
    var name = "House2"
}
class RichMan2<p: PropertyProtocol> {
    private var property: p
    
    func getProperty() -> p {
        return self.property
    }
    
    init() {
        self.property = p()
    }
}

let richman3 = RichMan2<House2>()
richman3.getProperty().name



////////  来自官网       --------------------------------
protocol Container {
    associatedtype Item
    mutating func append(_ item: Item)
    var count: Int { get }
    subscript(i: Int) -> Item { get }
}


struct IntStack: Container {
    // conformance to the Container protocol
    typealias Item = Int
    
    // original IntStack implementation
    var items: [Int] = []
    mutating func push(_ item: Int) {
        items.append(item)
    }
    mutating func pop() -> Int {
        return items.removeLast()
    }

    mutating func append(_ item: Int) {
        self.push(item)
    }
    var count: Int {
        return items.count
    }
    subscript(i: Int) -> Int {
        return items[i]
    }
}


struct Stack<Element>: Container {
    
    typealias Item = Element
    
    // original Stack<Element> implementation
    var items: [Element] = []
    
    mutating func push(_ item: Element) {
        items.append(item)
    }
    mutating func pop() -> Element {
        return items.removeLast()
    }
    // conformance to the Container protocol
    mutating func append(_ item: Element) {
        self.push(item)
    }
    var count: Int {
        return items.count
    }
    subscript(i: Int) -> Element {
        return items[i]
    }
}

extension Stack where Element: Equatable {
    func isTop(_ item: Element) -> Bool {
        guard let topItem = items.last else {
            return false
        }
        return topItem == item
    }
}

func allItemsMatch<C1: Container, C2: Container>
    (_ someContainer: C1, _ anotherContainer: C2) -> Bool
    where C1.Item == C2.Item, C1.Item: Equatable  {

        // Check that both containers contain the same number of items.
        if someContainer.count != anotherContainer.count {
            return false
        }

        // Check each pair of items to see if they're equivalent.
        for i in 0..<someContainer.count {
            if someContainer[i] != anotherContainer[i] {
                return false
            }
        }

        // All items match, so return true.
        return true
}








 

