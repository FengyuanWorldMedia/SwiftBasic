//: [Previous](@previous)

import Foundation

/// Part4.闭包的捕获值

var greeting = "Hello, playground"

// 闭包可以从定义它的环境中捕获常量和变量。然后，闭包可以从其主体中引用和修改这些常量和变量的值，即使定义这些常量和变量的原始范围已不存在。

func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}

let incrementByTen = makeIncrementer(forIncrement: 10)

incrementByTen()
// returns a value of 10
incrementByTen()
// returns a value of 20
incrementByTen()
// returns a value of 30

/// 以下的代码说明， 闭包是 【引用类型】。这个非常关键。
let alsoIncrementByTen = incrementByTen
alsoIncrementByTen()
// returns a value of 40

incrementByTen()
// returns a value of 50

//: [Next](@next)
