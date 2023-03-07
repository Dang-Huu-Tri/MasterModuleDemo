//
//  GCOSVersion.swift
//  CGFingerPringtingSDK
//
//  Created by Tri.Dang on 10/01/2023.
//

import Foundation
import UIKit

class GCOSVersion: NSObject, GCOSVersionProtocol {
    public var major: String
    public var minor: String
    public var patch: String
    public var rawSystemVersion: String
    
    public init(_ device: UIDevice = UIDevice.current) {
        var curMajor = ""
        var curMinor = ""
        var curPatch = ""
        let systemVersion = device.systemVersion
        let components = systemVersion.components(separatedBy: ".")
        for (index, curElement) in components.enumerated() {
            guard curElement.isNotEmpty else { continue }
            if index == 0 {
                curMajor = curElement
            } else if(index == 1) {
                curMinor = curElement
            } else if(index == 2) {
                curPatch = curElement
            }
        }
        major = curMajor
        minor = curMinor
        patch = curPatch
        rawSystemVersion = systemVersion
    }
}
