//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

/// Part7. 闭包强循环引用

/// 分析一下的代码， asHTML 闭包中，引用了 self 。而 self 中 又引用了 asHTML。
/// 形成了 闭包强循环引用 ， HTMLElement 类对象 引用计数不为0 ，不会被 释放。
///   特别注意： 即使asHTML 多次 引用 self，不会 多次增加 self 的 引用计数。

class HTMLElement {

    let name: String
    let text: String?

    lazy var asHTML: () -> String = {
        if let text = self.text {
            return "<\(self.name)>\(text)</\(self.name)>"
        } else {
            return "<\(self.name) />"
        }
    }

    init(name: String, text: String? = nil) {
        self.name = name
        self.text = text
    }

    deinit {
        print("\(name) is being deinitialized")
    }
}


var paragraph: HTMLElement? = HTMLElement(name: "p", text: "hello, world")
print(paragraph!.asHTML())
paragraph = nil

// ========================================= 解决 闭包强循环使用 ===============
// lazy var someClosure = {
//    [unowned self, weak delegate = self.delegate] in
//    // closure body goes here
// }


class NameClass {
    var name: String
    init(name: String) {
        self.name = name
    }
    deinit {
        print("NameClass")
    }
}

class HTMLElement2 {

    let name: String
    let text: String?

    let nameObject = NameClass(name: "test")
    
    
    lazy var asHTML: () -> String = {
        [weak self] in
        if let text = self?.text {
            return "<\(self?.name)>\(text)</\(self?.name)>"
        } else {
            return "<\(self?.name) />"
        }
    }
    
    lazy var asHTML2: () -> String = {
        [unowned self] in
        if let text = self.text {
            return "<\(self.name)>\(text)</\(self.name)>"
        } else {
            return "<\(self.name) />"
        }
    }

    
    lazy var asHTML3: () -> String = {
        // 注意这里的捕获列别定义，不增加 HTMLElement2 对象 和 nameObject对象的 引用计数。
        [unowned self, weak nameObject = self.nameObject] in
        guard let nameObject = nameObject else {
            return ""
        }
        if let text = self.text {
            return "<\(nameObject.name)>\(text)</\(nameObject.name)>"
        } else {
            return "<\(nameObject.name) />"
        }
    }
    
    lazy var asHTML4: () -> String = {
        // 注意这里的捕获列别定义，不增加 HTMLElement2 对象 和 nameObject对象的 引用计数。
        [unowned self] in
        if let text = self.text {
            return "<\(nameObject.name)>\(text)</\(nameObject.name)>"
        } else {
            return "<\(nameObject.name) />"
        }
    }
    
    init(name: String, text: String? = nil) {
        self.name = name
        self.text = text
    }

    deinit {
        print("\(name) is being deinitialized")
    }

}
var paragraph2: HTMLElement2? = HTMLElement2(name: "p", text: "hello, world")
print(paragraph2!.asHTML4())
// Prints "<p>hello, world</p>"
paragraph2 = nil

//: [Next](@next)
