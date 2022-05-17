//: [Previous](@previous)

import Foundation
import SwiftUI
import UIKit

/// Part2.尾闭包语法
///
var greeting = "Hello, playground"

//: [Next](@next)

func httpLoadData(url: String) -> Data? {
    print("http url: \(url)")
    print("模拟加载二进制数据")
    return Data()
}


func loadPicture(from pictureUrl: String, completion: (UIImage) -> Void, onFailure: () -> Void) {
    if let data = httpLoadData(url: pictureUrl) {
        if let picture = UIImage(data: data) {
            completion(picture)
        } else {
            onFailure()
        }
    } else {
        onFailure()
    }
    print("load picture")
}


loadPicture(from: "http://127.0.0.1:8080/image.png", completion: { image in
    print("load Picture finished")
    
}, onFailure: {
    print("Couldn't load the next picture.")
})


loadPicture(from: "http://127.0.0.1:8080/image.png") { picture in
    print(picture)
} onFailure: {
    print("Couldn't download the next picture.")
}
