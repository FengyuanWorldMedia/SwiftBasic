//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"
/// Part6.Autoclosures
///
///   特点：1. Autoclosures 是一种特殊的闭包
///        2. 只有一行执行表达式

var customersInLine = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
print(customersInLine.count)
// Prints "5"

let customerProvider = { customersInLine.remove(at: 0) }
print(customersInLine.count)
// Prints "5"

print("Now serving \(customerProvider())!")
// Prints "Now serving Chris!"
print(customersInLine.count)
// Prints "4"

//============================
// customersInLine is ["Alex", "Ewa", "Barry", "Daniella"]
func serve(customer customerProvider: () -> String) {
    print("Now serving \(customerProvider())!")
}

serve(customer: { customersInLine.remove(at: 0) } )
// Prints "Now serving Alex!"

// customersInLine is ["Alex", "Ewa", "Barry", "Daniella"]
func serve_auto(customer customerProvider: @autoclosure () -> String) { /// 注意这里和 serve 的定义的区别
    print("Now serving \(customerProvider())!")
}

serve_auto(customer: customersInLine.remove(at: 0) ) /// 注意这里和 serve 的调用的区别
// Prints "Now serving Alex!"


// customersInLine is ["Alex", "Ewa", "Barry", "Daniella"]
func serve_auto2(customer customerProvider: @autoclosure () -> Void) { /// 注意这里和 serve 的定义的区别
    customerProvider()
}

serve_auto2(customer: print("hello") ) /// 注意这里和 serve 的调用的区别
// Prints "Now serving Alex!"
 
//============================
//: [Next](@next)
