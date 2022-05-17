import UIKit

var greeting = "Hello, playground"

/// part1. 什么是自动引用计数 （ARC： Automatic Reference Counting）

// 在Swift中，内存的管理 机制 ARC ， 追踪 类对象的引用情况，当一个类对象不再被引用的时候，那么 该类对象就会被释放。
// 可以通过， 类对象的 【析构方法】去观察 有没有被释放。

   //  类对象引用的情况：
   //   1.被变量 引用
   //   2.在数组中或者在 容器组件中 被 下标引用
   //   3.被（类对象 或 结构体的） 成员变量 引用。
   //   4.被 函数或方法的参数变量 引用。
   //   其他。。

   // 备考： 这里的引用，是字面意思，表示 被使用 或者 可以参照 类对象的 内存变量存在。

class Balloon {
    var id : String
    var color: String
    init(id : String, color: String) {
        self.id = id
        self.color = color
    }
    deinit {
        print("Balloon id: \(self.id) is deinitialized")
    }
}

/// Balloon 对象的引用计数 为1
var b1: Balloon? = Balloon(id: "Balloon1", color: "red")
/// Balloon 对象的引用计数 为2
var b2 = b1
/// Balloon 对象的引用计数 为3
var b3 = b2
/// Balloon 对象的引用计数 为2
b3 = nil
/// Balloon 对象的引用计数 为1
b2 = nil
/// Balloon 对象的引用计数 为0
b1 = nil

//var arrayBalloon = [Balloon(id: "Balloon1", color: "red"), Balloon(id: "Balloon1", color: "blue")]
//arrayBalloon[1].color


