//: [Previous](@previous)

///
import Foundation

func matches(string: String, pattern: String, options: NSRegularExpression.Options) {

    // NSRegularExpression
    guard let regex = try? NSRegularExpression(pattern: pattern, options: options) else {
        print("Invalid Param")
        return
    }

    // 検索実行
    let results = regex.matches(in: string, options: [], range: NSRange(0..<string.count))

    if results.count == 0 {
        print("No matching")
        return
    }

    print("\(results.count) hit")

    // 結果表示
    for result in results {
        for i in 0..<result.numberOfRanges {
            let start = string.index(string.startIndex, offsetBy: result.range(at: i).location)
            let end = string.index(start, offsetBy: result.range(at: i).length)
            let text = String(string[start..<end])
            print(text
                .replacingOccurrences(of: "\r", with: "[CR]")
                .replacingOccurrences(of: "\n", with: "[LF]"))
        }
    }
}
///////////////////////////////////
var str = "apple Apple"
var pattern = "apple"

print("-- No Optional --")
matches(string: str, pattern: pattern, options: [])

print("-- With Optional --")
matches(string: str, pattern: pattern, options: [.caseInsensitive])

///////////////////////////////////
str = "apple"
pattern = """
apple # apple xx
"""

print("-- No Optional --")
matches(string: str, pattern: pattern, options: [])

print("-- With Optional --")
matches(string: str, pattern: pattern, options: [.allowCommentsAndWhitespace])

///////////////////////////////////
str = "[a]"
pattern = "[a]"

print("-- No Optional --")
matches(string: str, pattern: pattern, options: [])

print("-- With Optional --")
matches(string: str, pattern: pattern, options: [.ignoreMetacharacters])

///////////////////////////////////
str = """
apple
orange
strawberry
"""
 pattern = ".+"

print("-- No Optional --")
matches(string: str, pattern: pattern, options: [])

print("-- With Optional --")
matches(string: str, pattern: pattern, options: [.dotMatchesLineSeparators])
///////////////////////////////////



str = """
apple
orange
strawberry
"""
pattern = "^.+$"

print("-- No Optional --")
matches(string: str, pattern: pattern, options: [])

print("-- With Optional --")
matches(string: str, pattern: pattern, options: [.anchorsMatchLines])

print("-- .dotMatchesLineSeparators も指定してみる --")
matches(string: str, pattern: pattern, options: [.anchorsMatchLines, .dotMatchesLineSeparators])

///////////////////////////////////
///
///
let strA = "apple\norange\rstrawberry\r\nlemon"
let patternA = ".+"

print("-- No Optional --")
matches(string: strA, pattern: patternA, options: [])

print("-- With Optional --")
matches(string: strA, pattern: patternA, options: [.useUnixLineSeparators])
///////////////////////////////////
