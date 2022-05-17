import UIKit

var greeting = "Hello, playground"

enum Days {
    case Monday
    case Tuesday
    case Wednesday
    case Thursday
    case Friday
    case Saturday
    case Sunday
}

enum Color {
    case Red
    case Green
    case Blue
}

let colorA = Color.Red

switch colorA {
case .Red:
    print("colorA")
case .Green:
    print("colorG")
case .Blue:
    print("colorB")
}

if case .Red = colorA {
    print("colorA if")
} else {
    print("other")
}

enum DaysEx: Int, CaseIterable {
    case Monday = 1
    case Tuesday = 2
    case Wednesday = 3
    case Thursday = 4
    case Friday = 5
    case Saturday = 6
    case Sunday = 7
}

enum ColorEx: String {
    case Red
    case Green = "Green1"
    case Blue
}

print(DaysEx.Monday.rawValue)
print(ColorEx.Green.rawValue)

let greenColor = ColorEx(rawValue: "Green1")



enum ColorEnum2 {
    case Red(Int)
    case Green(Int)
    case Blue(Int)
}

let redC = ColorEnum2.Red(48)
let greenC = ColorEnum2.Green(100)
let blueC = ColorEnum2.Blue(45)

switch redC {
case .Red(let redValue):
    print("red value :\(redValue)")
case .Green(let greenValue):
    print("green value :\(greenValue)")
case .Blue(let blueValue):
    print("blue value :\(blueValue)")
}



