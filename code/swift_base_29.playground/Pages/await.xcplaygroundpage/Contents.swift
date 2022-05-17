import Foundation
import _Concurrency

/// Part.2
///   async 关键字 解决 传统回调的写法问题
///
func listPhotos(inGallery name: String) async -> [String] {
    let result = ["image1", "image2", "image3"]// ... some asynchronous networking code ...
    return result
}

func downloadPhoto(named name: String) async -> String {
    // let result = ["image1", "image2"]// ... some asynchronous networking code ...
    return name
}

func show(_ photo: String) {
    print("show pic name:\(photo)")
}

func doTest() {
    print("Do test start")
    Task {
        let photoNames = await listPhotos(inGallery: "Summer Vacation")
        let sortedNames = photoNames.sorted()
        let name = sortedNames[0]
        let photo = await downloadPhoto(named: name)
        show(photo)
    }
    print("Do test end")
}


doTest()


