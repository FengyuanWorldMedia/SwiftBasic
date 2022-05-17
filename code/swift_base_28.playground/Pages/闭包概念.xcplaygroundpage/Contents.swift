import UIKit

/// Part1.闭包概念

var greeting = "Hello, playground"

/// 闭包定义：
/// 闭包是一个定义在其它函数（父函数）里面的函数，它拥有对父函数里面变量的访问权。闭包有三个作用域的访问权。自身的作用域、父作用域和全局作用域。
/// 从定义可以看出，闭包的特点：
///
///   1.闭包是函数，它拥有函数的特点，比如 参数和返回值等。
///   2.作用域： 自身， 父， 全局。
///
///        注意：作用域（scope），程序设计概念，通常来说，一段程序代码中所用到的名字并不总是有效/可用的，而限定这个名字的可用性的代码范围就是这个名字的作用域。

/*
 闭包的表达：
   { (parameters) -> return type in
      statements
      return value
   }
 
 说明： 参数列表是可选的。
       返回值是可选的，【return type 和 return value】。
       参数列别和 返回值的类型是 根据上下文推断的。
 */

var convertStrToInt: (Int) -> Int = { param in
                                return param
                            }

var convertStrToInt2: (String) -> String = { param in
                                return param
                            }

print(convertStrToInt(12))
print(convertStrToInt(13))

print(convertStrToInt2("abc"))
print(convertStrToInt2("12"))

var convertIntToStr: (_ name: Int) -> String = { param in
                                return String(param)
                            }

print(convertIntToStr(15))
print(convertIntToStr(16))
