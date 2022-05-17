import UIKit
import SwiftUI

var greeting = "Hello, playground"

class Car {
    
    private var color: Color
    private var brandNane : String?
    
    private static var countOfCars = 0
    
    private static var serialNo = 1001
    private static var factoryName = "Beijing"
    
    init() {
        self.color = Color.white
        Self.countOfCars += 1
    }
    
    init(brandName : String , color: Color = .brown) {
        self.brandNane = brandName
        self.color = color
        Self.countOfCars += 1
    }
    
    internal func setBrandName(brandName : String ) {
        self.brandNane = brandName
    }
    
    internal func getBrandName() -> String? {
        return self.brandNane
    }
    
    internal class func getCountOfCars() -> Int {
        return Self.countOfCars
    }
    
    internal class func getFactoryName() -> String {
        return Self.factoryName
    }
    
    internal class func getSerialNo() -> Int {
        return Self.serialNo
    }
    
}


/// open > public > internal >   fileprivate  >  private

/// 模块A -- ClassA


/// 模块B-- ClassB

//1 如果在 模块B中 使用模块A 的ClassA， Class A的控制访问符 应该为 open 或 public
//    如果想在模块B中， 扩展或者 重写 ClassA的功能的话， ClassA 的控制访问符 应该为 open。

// 2. internal 模块内 访问的， 默认的。

// 3. private 私有的，class内部 或者 struct内部 访问。

// 4.fileprivate 严格 文件内 可以访问。

