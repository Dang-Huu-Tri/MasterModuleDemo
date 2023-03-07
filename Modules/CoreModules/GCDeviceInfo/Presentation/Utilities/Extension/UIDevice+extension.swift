//
//  UIDevice+extension.swift
//  CGFingerPringtingSDK
//
//  Created by Tri.Dang on 10/01/2023.
//

import Foundation
import UIKit

public extension UIDevice {
    static var rawIdentifier: String = {
        var systemInfo = utsname()
        uname(&systemInfo)
        let machineMirror = Mirror(reflecting: systemInfo.machine)
        let identifier = machineMirror.children.reduce("") { identifier, element in
            guard let value = element.value as? Int8 , value != 0 else { return identifier }
            return identifier + String(UnicodeScalar(UInt8(value)))
        }
        return identifier
    }()
}
