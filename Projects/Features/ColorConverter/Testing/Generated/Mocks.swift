// swift-format-ignore-file
///
/// @Generated by Mockolo
///

import ColorConverterInterface
import Foundation


public final class ColorConverterTypeMock: ColorConverterType {
    public init() { }


    public static private(set) var helloCallCount = 0
    public static var helloHandler: (() -> ())?
    public static func hello()  {
        helloCallCount += 1
        if let helloHandler = helloHandler {
            helloHandler()
        }

    }
}

