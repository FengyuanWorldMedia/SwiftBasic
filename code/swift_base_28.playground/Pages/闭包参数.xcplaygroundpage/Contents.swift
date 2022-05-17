//: [Previous](@previous)

import Foundation

/// Part3.闭包参数
///
var greeting = "Hello, playground"

var names = ["Tom", "Jim", "Zero"]

var reversedNames = names.sorted(by:
    {
        (s1: String, s2: String) -> Bool in
        return s1 > s2
    }
)

print("1.-------")
print(reversedNames)

names = ["Tom", "Jim", "Zero"]
reversedNames = names.sorted(by: {
    (s1, s2) -> Bool in
     return s1 > s2
   }
)
print("2.-------")
print(reversedNames)

names = ["Tom", "Jim", "Zero"]
reversedNames = names.sorted(by: {
    s1, s2 in
       s1 > s2
    }
)
print("3.-------")
print(reversedNames)

names = ["Tom", "Jim", "Zero"]
reversedNames = names.sorted(by: { $0 > $1 } )
print("4.-------")
print(reversedNames)

names = ["Tom", "Jim", "Zero"]
reversedNames = names.sorted(by: >)
print("5.-------")
print(reversedNames)

print("\n\n\n")

///  扩展 Array
extension Array {
    
    typealias MySortClosureType = (Self.Element, Self.Element) -> Bool
    
    func mySort(by: MySortClosureType) -> Array<Self.Element> {
        return self.sorted(by: by)
    }
}


reversedNames = names.mySort(by: { (s1: String, s2: String) -> Bool in
    return s1 > s2
})
print("mySort 1.-------")
print(reversedNames)

names = ["Tom", "Jim", "Zero"]
reversedNames = names.mySort(by: { (s1: String, s2: String) -> Bool in return s1 > s2 } )
print("mySort 2.-------")
print(reversedNames)

names = ["Tom", "Jim", "Zero"]
reversedNames = names.mySort(by: { s1, s2 in s1 > s2 } )
print("mySort 3.-------")
print(reversedNames)

names = ["Tom", "Jim", "Zero"]
reversedNames = names.mySort(by: { $0 > $1 } )
print("mySort 4.-------")
print(reversedNames)

names = ["Tom", "Jim", "Zero"]
reversedNames = names.mySort(by: >)
print("mySort 5.-------")
print(reversedNames)

//: [Next](@next)
