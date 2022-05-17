import UIKit

var greeting = "Hello, playground"
//
var age1 = 10
var age2 = 14

if age1 > age2 {
    print("age1 > age2")
} else {
    if age1 ==  age2  {
        print("age1 == age2")
    } else {
        print("age1 < age2")
    }
}

switch age2 {
case 10: print("年轻10")
case 11: print("年轻11")
case 12: print("年轻12")
case 13: print("年轻13")
case 14: print("年轻14")
default: print("年轻15default")
}


//for i in 1...10 where i%2 != 0 {
//    print(i)
//}

//var j: Int = 0
//while j < 10 {
//    print(j)
//    j += 1
//}

//var k: Int = 0
//repeat {
//    print(k)
//    k += 1
//    if k < 10 {
//        continue
//        print("after continue")
//    } else {
//        break
//    }
//} while true

//for h in 0...99 {
//    print(h)
//}

var num = ""
for h in 0...9 {
    num = "\(h)"
    for g in 0...9 {
        print("\(h)\(g)")
    }
}


