import UIKit

var greeting = "Hello, playground"

//func changeValue(val: String) {
//    val = "newValue"
//}
//
//func changeValue(val: Int) {
//    val = "newValue"
//}
//
//func changeValue(val: Array<String>) {
//    val = "newValue"
//}
//
//func changeValue(val: Set<String>) {
//    val = "newValue"
//}
//
//func changeValue(val: Dictionary<String, Int>) {
//    val = "newValue"
//}
//
//func changeValue(val: (Int, String)) {
//    val = "newValue"
//}
//
//enum SexEnum {
//    case male
//    case female
//}
//
//func changeValue(val: SexEnum) {
//    val = .female
//}
//
//struct BaseInfo {
//    var name: String
//}
//
//func changeValue(val: BaseInfo) {
//    val.name = "name123"
//}
//
//var int1 = 5
//changeValue(val: int1)
//
//let val = int1

class BaseInfo {
    var name: String = "init value"
}

func changeValue(val: BaseInfo) {
    val.name = "name123"
}

let val = BaseInfo()
changeValue(val: val)
print(val.name)

var funcVar: (String) -> Void = { (param: String) in
    print("hello \(param)")
}

struct Person {
    var baseInfo: BaseInfo
    var age: Int
}

func changeValue(val: Person) {
    val.baseInfo.name
}

func changeValue2(val: inout Person) {
    val.age = 15
}

var person = Person(baseInfo: BaseInfo(), age: 12)

changeValue2(val: &person)

print(person.age)

func sum(val: Int, val2: Int...) -> Int {
    var result = val
    for ele in val2 {
        result += ele
    }
    return result
}

func sum2(val: Int, val2: Int = 1212) -> Int {
    return val + val2
}


