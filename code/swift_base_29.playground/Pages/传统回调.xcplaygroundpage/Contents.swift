//: [Previous](@previous)

import Foundation

/// Part.1
///   传统回调写法
///
func listPhotos(inGallery: String, doWithPhotoNames: ([String])->Void ) {
    print(inGallery)
    doWithPhotoNames(["picA", "picB"])
}

func downloadPhoto(named: String , show: (String) -> Void) {
    print("download pic name:\(named)")
    show(named)
}

func show(_ photo: String) {
    print("show pic name:\(photo)")
}

listPhotos(inGallery: "Summer Vacation") { photoNames in
    let sortedNames = photoNames.sorted()
    let name = sortedNames[0] // download the first picture.
    downloadPhoto(named: name) { photo in
        show(photo)
    }
}

//: [Next](@next)
