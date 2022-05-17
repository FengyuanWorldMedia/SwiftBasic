//: [Previous](@previous)

import Foundation
import _Concurrency

/// Part4.
///    TaskGroup
///
func listPhotos(inGallery name: String) async -> [String] {
    let result = ["image1", "image2", "image3"]// ... some asynchronous networking code ...
    return result
}

func downloadPhoto(named name: String) async -> String {
    // let result = ["image1", "image2"]// ... some asynchronous networking code ...
    return name
}

/// https://developer.apple.com/documentation/swift/3917365-withtaskgroup
///

func test() {
    print("test start")
    Task {
        let groupResult = await withTaskGroup(of: String.self) { taskGroup -> String in
            let photoNames = await listPhotos(inGallery: "Summer Vacation")
            for name in photoNames {
                taskGroup.addTask { await downloadPhoto(named: name) }
            }
            /// 获取 taskgroup 结果
            var sum = ""
            for await result in taskGroup {
                sum += result
            }
            // 获取第一个
            // guard let first = await taskGroup.next() else {
            //     taskGroup.cancelAll()
            //     return ""
            // }
            return sum
        }
        print(groupResult)
    }
    print("test end")
}

test()


//: [Next](@next)
