import UIKit

var greeting = "Hello, playground"

var intA: Int = 15

var intB: Int?

var intC: Optional<Int> = Optional<Int>(16)

intB = 16

print(intA)
print(intB ?? 0)
print(intC)

var intArr: Array<Int?>?
intArr = nil
(intArr?[3] ?? 0) + 5
