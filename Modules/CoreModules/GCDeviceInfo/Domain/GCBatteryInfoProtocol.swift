//
//  CGBatteryInfoProtocol.swift
//  CGFingerPringtingSDK
//
//  Created by Tri.Dang on 11/01/2023.
//

import Foundation

@objc public protocol GCBatteryInfoProtocol: NSObjectProtocol {
    var batteryLevel: Float { get }
    var batteryState: String { get }
}
