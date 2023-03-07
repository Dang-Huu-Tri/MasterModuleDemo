//
//  GCDeviceModelIdentifier+Convenient.swift
//  CGFingerPringtingSDK
//
//  Created by Tri.Dang on 05/01/2023.
//

import Foundation
import UIKit

public extension GCDeviceModelIdentifier {
    /// This is the identifier of the current device.
    static var current: GCDeviceModelIdentifier {
        return GCDeviceModelIdentifier(rawValue: UIDevice.rawIdentifier) ?? .unknown
    }
    
    var currentModel: GCDeviceModel {
        switch self {
            // MARK: iPods
        case .iPod1_1:                                      return .iPodTouch1
        case .iPod2_1:                                      return .iPodTouch2
        case .iPod3_1:                                      return .iPodTouch3
        case .iPod4_1:                                      return .iPodTouch4
        case .iPod5_1:                                      return .iPodTouch5
        case .iPod7_1:                                      return .iPodTouch6
        case .iPod9_1:                                      return .iPodTouch7
            // MARK: iPhones
        case .iPhone1_1:                                    return .iPhone2G
        case .iPhone1_2:                                    return .iPhone3G
        case .iPhone2_1:                                    return .iPhone3GS
        case .iPhone3_1, .iPhone3_2, .iPhone3_3:            return .iPhone4
        case .iPhone4_1:                                    return .iPhone4S
        case .iPhone5_1, .iPhone5_2:                        return .iPhone5
        case .iPhone5_3, .iPhone5_4:                        return .iPhone5C
        case .iPhone6_1, .iPhone6_2:                        return .iPhone5S
        case .iPhone7_1:                                    return .iPhone6Plus
        case .iPhone7_2:                                    return .iPhone6
        case .iPhone8_1:                                    return .iPhone6S
        case .iPhone8_2:                                    return .iPhone6sPlus
        case .iPhone8_4:                                    return .iPhoneSE
        case .iPhone9_1, .iPhone9_3:                        return .iPhone7
        case .iPhone9_2, .iPhone9_4:                        return .iPhone7Plus
        case .iPhone10_1, .iPhone10_4:                      return .iPhone8
        case .iPhone10_2, .iPhone10_5:                      return .iPhone8Plus
        case .iPhone10_3,.iPhone10_6:                       return .iPhoneX
        case .iPhone11_2:                                   return .iPhoneXS
        case .iPhone11_4, .iPhone11_6:                      return .iPhoneXsMax
        case .iPhone11_8:                                   return .iPhoneXr
        case .iPhone12_1:                                   return .iPhone11
        case .iPhone12_3:                                   return .iPhone11Pro
        case .iPhone12_5:                                   return .iPhone11ProMax
        case .iPhone12_8:                                   return .iPhoneSE2
        case .iPhone13_1:                                   return .iPhone12Mini
        case .iPhone13_2:                                   return .iPhone12
        case .iPhone13_3:                                   return .iPhone12Pro
        case .iPhone13_4:                                   return .iPhone12ProMax
        case .iPhone14_2:                                   return .iPhone13Pro
        case .iPhone14_3:                                   return .iPhone13ProMax
        case .iPhone14_4:                                   return .iPhone13Mini
        case .iPhone14_5:                                   return .iPhone13
        case .iPhone14_6:                                   return .iPhoneSE3
        case .iPhone14_7:                                   return .iPhone14
        case .iPhone14_8:                                   return .iPhone14Plus
        case .iPhone15_2:                                   return .iPhone14Pro
        case .iPhone15_3:                                   return .iPhone14ProMax
            // MARK: iPads
        case .iPad2_1, .iPad2_2, .iPad2_3, .iPad2_4:        return .iPad2
        case .iPad3_1, .iPad3_2, .iPad3_3:                  return .iPad3
        case .iPad3_4, .iPad3_5, .iPad3_6:                  return .iPad4
        case .iPad4_1, .iPad4_2, .iPad4_3:                  return .iPadAir
        case .iPad5_3, .iPad5_4:                            return .iPadAir2
        case .iPad6_11, .iPad6_12:                          return .iPad5
        case .iPad7_5, .iPad7_6:                            return .iPad6
        case .iPad7_11, .iPad7_12:                          return .iPad7
        case .iPad11_3, .iPad11_4:                          return .iPadAir3
        case .iPad11_6, .iPad11_7:                          return .iPad8
        case .iPad12_1, .iPad12_2:                          return .iPad9
        case .iPad13_1, .iPad13_2:                          return .iPadAir4
        case .iPad13_16, .iPad13_17:                        return .iPadAir5
        case .iPad13_18, .iPad13_19:                        return .iPad10
            // MARK: iPad minis
        case .iPad2_5, .iPad2_6, .iPad2_7:                  return .iPadMini
        case .iPad4_4, .iPad4_5, .iPad4_6:                  return .iPadMini2
        case .iPad4_7, .iPad4_8, .iPad4_9:                  return .iPadMini3
        case .iPad5_1, .iPad5_2:                            return .iPadMini4
        case .iPad11_1, .iPad11_2:                          return .iPadMini5
        case .iPad14_1, .iPad14_2:                          return .iPadMini6
            // MARK: iPad Pros
        case .iPad6_3, .iPad6_4:                            return .iPadPro
        case .iPad6_7, .iPad6_8:                            return .iPadPro12Inch1
        case .iPad7_1, .iPad7_2:                            return .iPadPro12Inch2
        case .iPad7_3, .iPad7_4:                            return .iPadPro2
        case .iPad8_1, .iPad8_2, .iPad8_3, .iPad8_4:        return .iPadPro11Inch1
        case .iPad8_5, .iPad8_6, .iPad8_7, .iPad8_8:        return .iPadPro12Inch3
        case .iPad8_9, .iPad8_10:                           return .iPadPro11Inch2
        case .iPad8_11, .iPad8_12:                          return .iPadPro12Inch4
        case .iPad13_4, .iPad13_5, .iPad13_6, .iPad13_7:    return .iPadPro11Inch3
        case .iPad14_3, .iPad14_4:                          return .iPadPro11Inch4
        case .iPad13_8, .iPad13_9, .iPad13_10, .iPad13_11:  return .iPadPro12Inch5
        case .iPad14_5, .iPad14_6:                          return .iPadPro12Inch6
            // MARK: Simulators
        case .i386, .x86_64, .arm64:
            return .simulator
            // MARK: Unknown
        case .unknown:                                      return .unknown
        }
    }
}
