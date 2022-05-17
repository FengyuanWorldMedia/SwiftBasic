//: [Previous](@previous)

import Foundation
import _Concurrency

/// Part.3
///  异步调用的两种方式对比
///  
func listPhotos(inGallery name: String) async -> [String] {
    let result = ["image1", "image2", "image3"]// ... some asynchronous networking code ...
    return result
}

func downloadPhoto(named name: String) async -> String {
    // let result = ["image1", "image2"]// ... some asynchronous networking code ...
    return name
}

func show2(_ photos: [String]) {
    print("show pic name:\(photos)")
}

func doTest2 () {
    Task {
        let photoNames = ["IMG001", "IMG99", "IMG0404"]
        let firstPhoto = await downloadPhoto(named: photoNames[0])
        let secondPhoto = await downloadPhoto(named: photoNames[1])
        let thirdPhoto = await downloadPhoto(named: photoNames[2])
        let photos = [firstPhoto, secondPhoto, thirdPhoto]
        show2(photos)
    }
}

func doTest3 () {
    Task {
        let photoNames = ["IMG001", "IMG99", "IMG0404"]
        async let firstPhoto = downloadPhoto(named: photoNames[0])
        async let secondPhoto = downloadPhoto(named: photoNames[1])
        async let thirdPhoto = downloadPhoto(named: photoNames[2])
        let photos = await [firstPhoto, secondPhoto, thirdPhoto]
        show2(photos)
    }
}
 

//: [Next](@next)
