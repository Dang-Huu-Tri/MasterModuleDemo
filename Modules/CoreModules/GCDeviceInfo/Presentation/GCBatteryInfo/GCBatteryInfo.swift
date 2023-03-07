//
//  CGBatteryInfo.swift
//  CGFingerPringtingSDK
//
//  Created by Tri.Dang on 10/01/2023.
//

import Foundation
import UIKit

class CGBatteryInfo: NSObject {
    fileprivate var device: UIDevice
    public init(_ curDevice: UIDevice = UIDevice.current) {
        device = curDevice
        device.isBatteryMonitoringEnabled = true
    }
}

extension CGBatteryInfo: GCBatteryInfoProtocol {
    public var batteryLevel: Float {
        return device.batteryLevel
    }
    
    public var batteryState: String {
        switch device.batteryState {
        case .unplugged:
            return "unplugged"
        case .charging:
            return "charging"
        case .full:
            return "full"
        default:
            return "unknown"
        }
    }
}
