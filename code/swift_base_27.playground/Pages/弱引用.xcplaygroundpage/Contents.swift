//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

/// Part3. 弱引用
/// 弱引用，表示 虽然 类对象被引用了，但不 增加类对象的引用计数。
///  在变量前 添加 【weak】 关键字，表示 如果 被该对象变量引用了，其引用的 类对象的 引用计数不增加。
///    讨论： Balloon 中的 kid 变量，是否适合添加 【weak】 关键字。

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
    
    weak var kid: Kid?
    
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
// Kid 类对象 引用计数为1
balloon!.kid = kid

// Kid 类对象 引用计数为0， Kid 类对象被释放， 释放对象的balloon属性 对  Balloon 类对象 引用 也消失了， Balloon 类对象 引用计数变为为1
kid = nil

// Balloon 类对象 引用计数为0
balloon = nil


//: [Next](@next)
