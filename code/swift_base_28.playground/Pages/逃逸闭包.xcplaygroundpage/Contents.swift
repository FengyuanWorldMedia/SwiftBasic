//: [Previous](@previous)

import Foundation
import UIKit

var greeting = "Hello, playground"
/// Part5.逃逸闭包
///

/// 概念：
/// 当闭包作为参数传递给函数，但在函数返回后被调用时，闭包被称为转义函数。当您声明一个将闭包作为其参数之一的函数时，可以在参数的类型之前写入@escaping，以指示允许对闭包进行转义。
///
/// An escaping closure is a closure that’s called after the function it was passed to returns. In other words, it outlives the function it was passed to.
/// A non-escaping closure is a closure that’s called within the function it was passed into, i.e. before it returns. This closure never passes the bounds of the function it was passed into.


class PictureLoader {
    private var completion: (UIImage) -> Void
    private var onFailure: () -> Void
    
    init(completion: @escaping (UIImage) -> Void, onFailure: @escaping () -> Void) {
        self.completion = completion
        self.onFailure = onFailure
    }
    
    
   private func httpLoadData(url: String) -> Data? {
        print("http url: \(url)")
        print("模拟加载二进制数据")
        return Data()
    }

    func loadPicture(from pictureUrl: String) {
        if let data = httpLoadData(url: pictureUrl) {
            if let picture = UIImage(data: data) {
                self.completion(picture)
            } else {
                self.onFailure()
            }
        } else {
            self.onFailure()
        }
    }
    
}

var pictureLoader = PictureLoader(completion: {
                    picture in
                       print(picture)
                }, onFailure: {
                    print("Couldn't download the next picture.")
                })

pictureLoader.loadPicture(from: "http://127.0.0.1:8080/image.png")
 
//: [Next](@next)
