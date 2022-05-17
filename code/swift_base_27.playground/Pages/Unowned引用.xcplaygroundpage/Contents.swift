//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

/// Part4. Unowned引用
///   应用场景：当一个类对象的生命周期，比另外一个 类对象的生命周期短的时候。
///                      比如： 有<宿主关系> 的 引用情况时使用。
///     和 弱引用一样，被 Unowned引用的类对象， 不增加类对象的引用计数。
///           在变量前 添加 【unowned】 关键字。
///
class Kid {
    var name: String
    var studCard: StudentCard?
    
    init(name: String) {
        self.name = name
    }
    deinit {
        print("Kid name: \(self.name) is deinitialized")
    }
}

class StudentCard {
    var id: String
    unowned var kid: Kid  /// 这里的 unowned 变量 可以不是 Optional. 在初始化的时候进行 设值。 思考一下，如果是 Kid？ 类型，将是一种什么情况？
    
    init(id: String, kid: Kid) {
        self.id = id
        self.kid = kid
    }
    deinit {
        print("StudentCard id: \(self.id) is deinitialized")
    }
}


// Kid 类对象 引用计数为1
var kid: Kid? = Kid(name: "Tom")

//  Kid 类对象 引用计数为1. StudentCard 类对象 引用计数为1
kid!.studCard = StudentCard(id: "Card No 01", kid: kid!)

// Kid 类对象 引用计数为0， 被释放的studCard属性 对  StudentCard 类对象 引用 也消失了， StudentCard 类对象 引用计数变为为0
kid = nil

//: [Next](@next)
