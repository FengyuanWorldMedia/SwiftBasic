import UIKit

var greeting = "Hello, playground"

enum LogicError: Error {
    case wrongValue
    case wrongProcessing
    case wrongWithParam(String)
}



func LogicFunc(input: Int) throws -> Bool {
    if input == 0 {
        throw LogicError.wrongValue
    }
    
    let temp = input + 10
    
    if temp < 20 {
        throw LogicError.wrongProcessing
    }
    if temp < 30 {
        throw LogicError.wrongWithParam("< 30 error")
    }
    
    return temp == 50 ? true : false
}


do {
    
    try LogicFunc(input: 0)
} catch LogicError.wrongValue {
    print("LogicError.wronValue")
} catch LogicError.wrongProcessing {
    print("LogicError.wrongProcessing")
} catch LogicError.wrongWithParam(let param) {
    print("LogicError.wrongWithParam \(param)")
}
defer {
    print("after try")
}


func doLogic() throws -> Bool {
    var result = false
    do {
        result = try LogicFunc(input: 0)
    } catch LogicError.wrongValue {
        throw LogicError.wrongValue
    }
    return result
}


 
