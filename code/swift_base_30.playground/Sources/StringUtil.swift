import Foundation


public class StringUtil {
    
    public static func toMoneyFormat(money:Int) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        let commaString = formatter.string(from: money as NSNumber)
        var rtnValue = commaString ?? "\(money)"
        
        if money >= 0 {
            rtnValue = "¥" + rtnValue
        } else {
            let rtnValueNs = NSString(string:rtnValue)
            rtnValue = rtnValueNs.replacingOccurrences(of: "-", with: "- ¥")
        }
        return rtnValue
    }
    
   public static func toMoneyFormat(money:String) -> String {
        var moneyInt:Int
        if money.isEmpty {
            moneyInt = 0
        } else {
            moneyInt = StringUtil.toInteger(value: money)
        }
        return StringUtil.toMoneyFormat(money: moneyInt)
    }
    
    // 2000 -> 2,000
    public static func toMoneyFormatWithoutMark(money:Int) -> String {
         let formatter = NumberFormatter()
         formatter.numberStyle = .decimal
         let commaString = formatter.string(from: money as NSNumber)
         let rtnValue = commaString ?? "\(money)"
         return rtnValue
     }
    
    // "2000" -> 2,000
    public static func toMoneyFormatWithoutMark(money:String) -> String {
         var moneyInt:Int
         if money.isEmpty {
             moneyInt = 0
         } else {
             moneyInt = StringUtil.toInteger(value: money)
         }
         return toMoneyFormatWithoutMark(money: moneyInt)
     }
    
    
    public static func toInteger(value:String) -> Int {
        return NSString(string:value).integerValue
    }
    
//    public static func replaceHtmlTag(html :String?) -> String {
//        if html != nil {
//            return html!.replacingOccurrences(of: "<[b,B][r,R]\\s*/?>", with: "\n", options: .regularExpression)
//                        .replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression)
//        } else {
//            return ""
//        }
//    }
    
    /// Intercepts a string from the specified content
    /// - Parameters:
    ///   - content: specified content
    ///   - beginIndex: begin Index
    ///   - length: Intercepts string length
    public static func subString(content:String, beginIndex:Int, length:Int) -> String{
        let strArray = Array(content)
        let subStrArray = strArray[beginIndex..<beginIndex + length ]
        let result = String(subStrArray)
        return result
    }

    /// Returns the first position of the specified substring in the specified content
    /// - Parameters:
    ///   - content: specified content
    ///   - substr: specified substring
    public static func firstIndexOf(content:String, substr:String) -> Int {
        let nsStr = NSString(string:content)
        let rng = nsStr.range(of:substr)
        return rng.location
    }

    /// Replace the target string in the specified string content
    /// - Parameters:
    ///   - content: specified string content
    ///   - target: target string
    ///   - replacement: replacement
    public static func replace(content:String, target:String, replacement:String) -> String{
        let nsStr = NSString(string:content)
        return nsStr.replacingOccurrences(of: target, with: replacement)
    }
    
    /// EmailAdress Format
    public static func validEmailString(content:String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: content)
    }
     
}
