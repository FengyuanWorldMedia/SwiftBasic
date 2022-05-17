//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//// Part5. Implicitly Unwrapped Optional Properties
///
/// 在这种情况下，两个属性都应该始终有一个值，并且一旦初始化完成，两个属性都不应该为nil
/// 建立的引用关系，但是 避免了 强循环引用。
///
class Country {
    let name: String
    var capitalCity: City! /// 初始化时，必须有值。 【！】 为  Implicitly Unwrapped Optional Properties
    init(name: String, capitalName: String) {
        self.name = name
        self.capitalCity = City(name: capitalName, country: self)
    }
    deinit {
        print("Country deinit")
    }
}

class City {
    let name: String
    unowned let country: Country /// 初始化时，必须有值。
    init(name: String, country: Country) {
        self.name = name
        self.country = country
    }
    deinit {
        print("City deinit, cityName: \(self.name)")
    }
}


func test() {
    let country: Country = Country(name: "China", capitalName: "Najing")
    print("\(country.name)'s capital city is called \(country.capitalCity.name)")
    
    
    let beijingCity = City(name: "Beijing", country: country)
    country.capitalCity = beijingCity  /// 这个赋值，表示了 NajingCity 的 引用计数 变为了 0。
    
    print("\(country.name)'s capital city is called \(country.capitalCity.name)")
}

test()

//: [Next](@next)
