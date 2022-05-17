import UIKit

var greeting = "Hello, playground"

/// method  & function
///
///

// method  & function
// 把一组 经常被调用的命令，整合到一个代码块中，形成 方法或函数。

// 参数， 返回值

// Method 指 ， 可以 有返回值 也可以没有返回值， 参数可以是 引用参数 也可以是非引用参数。

// Function指，有返回值， 参数可选， 返回值（数学上： 只和参数有关系，函数不改变参数的值）； 程序上来讲 约束比较小。


// Swift -- function
print("process start")
let i = 1 + 2
print("process end")

func sum(i: Int, j: Int = 10) -> Int {
    print("process start")
    let g = i + j
    print("process end")
    return g
}

let a = sum(i: 1, j: 2)
let b = sum(i: 3, j: 4)
let c = sum(i: 1)

print(a)
print(b)
print(c)

func printDetail() {
    print("printDetail")
}

printDetail()

func sumEX(i: Int, j: Int...) -> Int {
    print("process start")
    var result = i
    for ele in j {
        result += ele
    }
    print("process end")
    return result
}

let i22 = sumEX(i: 1, j: 2,3,4,5,6)
let i23 = sumEX(i: 1, j: 2,3,4,5,6,7,8,9)

print(i22)
print(i23)

func sumEX2(i innerI: Int, j innerJ: Int...) -> Int {
    print("process start")
    var result = innerI
    for ele in innerJ {
        result += ele
    }
    print("process end")
    return result
}

let i24 = sumEX2(i: 1, j: 2)
print(i24)

func sumEX3(_ innerI: Int, _ innerJ: Int...) -> Int {
    print("process start")
    var result = innerI
    for ele in innerJ {
        result += ele
    }
    print("process end")
    return result
}

let i25 = sumEX3(1, 5)
print(i25)
