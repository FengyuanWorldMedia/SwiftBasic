import UIKit

var greeting = "Hello, playground"


struct RichManStruct {
    var name: String
    
    struct BaseInfoStruct {
        var age: Int
        var sex: SexEnum
    }
    
    class BaseInfoClass {
        
    }
    
    enum SexEnum {
        case male
        case female
    }
    
    var baseInfo: BaseInfoStruct
    var baseInfoClass: BaseInfoClass
    
    init() {
        name = "name"
        baseInfo = BaseInfoStruct(age: 12, sex: .male)
        baseInfoClass = BaseInfoClass()
    }
}
 
let richMan = RichManStruct()
let baseInfo: RichManStruct.BaseInfoStruct = richMan.baseInfo

class RichManClass {
    var name: String
    
    struct BaseInfoStruct {
        var age: Int
        var sex: SexEnum
    }
    
    class BaseInfoClass {
        
    }
    
    enum SexEnum {
        case male
        case female
    }
    
    var baseInfo: BaseInfoStruct
    var baseInfoClass: BaseInfoClass
    
    init() {
        name = "name"
        baseInfo = BaseInfoStruct(age: 12, sex: .male)
        baseInfoClass = BaseInfoClass()
    }
}

let richMan2 = RichManClass()
let baseInfo2: RichManClass.BaseInfoStruct = richMan2.baseInfo

func getName() -> String {
    class BaseInfoClass {
        var name = ""
    }
    let baseInfo = BaseInfoClass()
    return baseInfo.name
}
