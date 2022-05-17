//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

/// Part2. 强循环引用
// 如果 两个 类对象的 成员之间产生 直接或间接的 对 类对象的引用 ，在引用上 形成“环”。
// 这时，就形成了 【强循环引用】。
// 其【自动引用计数】，始终大于1，类对象 就不会被释放，造成了对象的 【游离态】，内存被 无意义的消耗。

class Kid {
    var name: String
    var balloon: Balloon?
    
    init(name: String) {
        self.name = name
    }
    deinit {
        print("Kid name: \(self.name) is deinitialized")
    }
}

class Balloon {
    var id : String
    var color: String
    
    var kid: Kid?
    
    init(id : String, color: String) {
        self.id = id
        self.color = color
    }
    deinit {
        print("Balloon id: \(self.id) is deinitialized")
    }
}


// Kid 类对象 引用计数为1
var kid: Kid? = Kid(name: "Tom")
// Balloon 类对象 引用计数为1
var balloon: Balloon? = Balloon(id: "Balloon 01", color: "red")

// Balloon 类对象 引用计数为2
kid!.balloon = balloon
// Kid 类对象 引用计数为2
balloon!.kid = kid


/// 讨论下面的代码：
kid!.balloon = nil
balloon!.kid = nil
///
//// Kid 类对象 引用计数为1
kid = nil
// Balloon 类对象 引用计数为1
balloon = nil

/// 观察 kid 和 balloon ， 即使都赋值为 nil ， 可 Kid和Balloon 类对象 引用计数为1 ， 内存 不被释放。


//: [Next](@next)
