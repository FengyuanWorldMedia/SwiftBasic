//: [Previous](@previous)

import Foundation
import _Concurrency

/// Part.5
/// actor 和class 一样，是引用类型。
/// 与类不同，actor一次只允许一个任务访问其可变状态，这使得多个任务中的代码可以安全地与actor的同一个实例交互。
/// 配合 await 使用。
///
actor TemperatureLogger {
    let label: String
    private var measurements: [Int]
    private(set) var max: Int

    init(label: String, measurement: Int) {
        self.label = label
        self.measurements = [measurement]
        self.max = measurement
    }
}

extension TemperatureLogger {
    func update(with measurement: Int) {
        measurements.append(measurement)
        if measurement > max {
            max = measurement
        }
    }
}

Task {
    let logger = TemperatureLogger(label: "Outdoors", measurement: 25)
    print(await logger.max)
    
    await logger.update(with: 10)
    print(await logger.max)
}
