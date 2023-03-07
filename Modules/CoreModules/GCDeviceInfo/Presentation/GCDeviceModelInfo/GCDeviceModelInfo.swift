//
//  GCDeviceModelInfo.swift
//  CGFingerPringtingSDK
//
//  Created by Tri.Dang on 05/01/2023.
//

import Foundation

class GCDeviceModelInfo: NSObject {
    var curModel: GCDeviceModel
    var curIdentifier: GCDeviceModelIdentifier
    
    public init(identifier: GCDeviceModelIdentifier = GCDeviceModelIdentifier.current) {
        curIdentifier = identifier
        curModel = identifier.currentModel
    }
}

extension GCDeviceModelInfo: GCDeviceModelInfoProtocol {
    public var systemMachineName: String {
        return curIdentifier.rawValue
    }
    public var modelName: String {
        switch curModel {
        case .unknown:                          return "Unknown"
        // MARK: iPod
        case .iPodTouch1:                       return "iPod Touch 1"
        case .iPodTouch2:                       return "iPod Touch 2"
        case .iPodTouch3:                       return "iPod Touch 3"
        case .iPodTouch4:                       return "iPod Touch 4"
        case .iPodTouch5:                       return "iPod Touch 5"
        case .iPodTouch6:                       return "iPod Touch 6"
        case .iPodTouch7:                       return "iPod Touch 7"
                
        // MARK: iPhone
        case .iPhone2G:                         return "iPhone 2G"
        case .iPhone3G:                         return "iPhone 3G"
        case .iPhone3GS:                        return "iPhone 3GS"
        case .iPhone4:                          return "iPhone 4"
        case .iPhone4S:                         return "iPhone 4S"
        case .iPhone5:                          return "iPhone 5"
        case .iPhone5C:                         return "iPhone 5C"
        case .iPhone5S:                         return "iPhone 5S"
        case .iPhone6:                          return "iPhone 6"
        case .iPhone6Plus:                      return "iPhone 6 Plus"
        case .iPhone6S:                         return "iPhone 6S"
        case .iPhone6sPlus:                     return "iPhone 6s Plus"
        case .iPhoneSE:                         return "iPhone SE"
        case .iPhone7:                          return "iPhone 7"
        case .iPhone7Plus:                      return "iPhone 7 Plus"
        case .iPhone8:                          return "iPhone 8"
        case .iPhone8Plus:                      return "iPhone 8 Plus"
        case .iPhoneX:                          return "iPhone X"
        case .iPhoneXS:                         return "iPhone XS"
        case .iPhoneXsMax:                      return "iPhone XS Max"
        case .iPhoneXr:                         return "iPhone XR"
        case .iPhone11:                         return "iPhone 11"
        case .iPhone11Pro:                      return "iPhone 11 Pro"
        case .iPhone11ProMax:                   return "iPhone 11 Pro Max"
        case .iPhoneSE2:                        return "iPhone SE (2nd generation)"
        case .iPhone12Mini:                     return "iPhone 12 Mini"
        case .iPhone12:                         return "iPhone 12"
        case .iPhone12Pro:                      return "iPhone 12 Pro"
        case .iPhone12ProMax:                   return "iPhone 12 Pro Max"
        case .iPhone13Mini:                     return "iPhone 13 Mini"
        case .iPhone13:                         return "iPhone 13"
        case .iPhone13Pro:                      return "iPhone 13 Pro"
        case .iPhone13ProMax:                   return "iPhone 13 Pro Max"
        case .iPhoneSE3:                        return "iPhone SE (3rd generation)"
        case .iPhone14:                         return "iPhone 14"
        case .iPhone14Plus:                     return "iPhone 14 Plus"
        case .iPhone14Pro:                      return "iPhone 14 Pro"
        case .iPhone14ProMax:                   return "iPhone 14 Pro Max"
        // MARK: iPad
        case .iPad2:                            return "iPad 2"
        case .iPad3:                            return "iPad 3"
        case .iPad4:                            return "iPad 4"
        case .iPadAir:                          return "iPad Air"
        case .iPadAir2:                         return "iPad Air 2"
        case .iPadAir3:                         return "iPad Air 3"
        case .iPadAir4:                         return "iPad Air 4"
        case .iPadAir5:                         return "iPad Air 5"
        case .iPad5:                            return "iPad 5"
        case .iPad6:                            return "iPad 6"
        case .iPad7:                            return "iPad 7"
        case .iPad8:                            return "iPad 8"
        case .iPad9:                            return "iPad 9"
        case .iPad10:                           return "iPad 10"
        case .iPadMini:                         return "iPad mini"
        case .iPadMini2:                        return "iPad mini 2"
        case .iPadMini3:                        return "iPad mini 3"
        case .iPadMini4:                        return "iPad mini 4"
        case .iPadMini5:                        return "iPad mini 5"
        case .iPadMini6:                        return "iPad mini 6"
        case .iPadPro:                          return "iPad Pro"
        case .iPadPro2:                         return "iPad Pro (2nd generation)"
        case .iPadPro11Inch1:                   return "iPad Pro 11'"
        case .iPadPro11Inch2:                   return "iPad Pro 11' (2nd generation)"
        case .iPadPro11Inch3:                   return "iPad Pro 11' (3rd generation)"
        case .iPadPro11Inch4:                   return "iPad Pro 11' (4th generation)"
        case .iPadPro12Inch1:                   return "iPad Pro 12.9"
        case .iPadPro12Inch2:                   return "iPad Pro 12.9 (2nd generation)"
        case .iPadPro12Inch3:                   return "iPad Pro 12.9 (3rd generation)"
        case .iPadPro12Inch4:                   return "iPad Pro 12.9 (4th generation)"
        case .iPadPro12Inch5:                   return "iPad Pro 12.9 (5th generation)"
        case .iPadPro12Inch6:                   return "iPad Pro 12.9 (6th generation)"
        case .simulator:                        return "Simulator"
        }
    }
    
    public var machineName: String {
        switch curIdentifier {
        case .iPod1_1:
            return "iPod Touch 1"
        case .iPod2_1:
            return "iPod Touch 2"
        case .iPod3_1:
            return "iPod Touch 3"
        case .iPod4_1:
            return "iPod Touch 4"
        case .iPod5_1:
            return "iPod Touch 5"
        case .iPod7_1:
            return "iPod Touch 6"
        case .iPod9_1:
            return "iPod Touch 7"
        case .iPhone1_1:
            return "iPhone 2G"
        case .iPhone1_2:
            return "iPhone 3G"
        case .iPhone2_1:
            return "iPhone 3GS"
        case .iPhone3_1:
            return "iPhone 4 (GSM)"
        case .iPhone3_2:
            return "iPhone 4 (GSM / 2012)"
        case .iPhone3_3:
            return "iPhone 4 (CDMA)"
        case .iPhone4_1:
            return "iPhone 4S"
        case .iPhone5_1:
            return "iPhone 5 (GSM)"
        case .iPhone5_2:
            return "iPhone 5 (Global)"
        case .iPhone5_3:
            return "iPhone 5c (GSM)"
        case .iPhone5_4:
            return "iPhone 5c (Global)"
        case .iPhone6_1:
            return "iPhone 5s (GSM)"
        case .iPhone6_2:
            return "iPhone 5s (Global)"
        case .iPhone7_1:
            return "iPhone 6+"
        case .iPhone7_2:
            return "iPhone 6"
        case .iPhone8_1:
            return "iPhone 6s"
        case .iPhone8_2:
            return "iPhone 6s+"
        case .iPhone8_4:
            return "iPhone SE"
        case .iPhone9_1:
            return "iPhone 7 (CDMA)"
        case .iPhone9_2:
            return "iPhone 7+ (CDMA)"
        case .iPhone9_3:
            return "iPhone 7 (GSM)"
        case .iPhone9_4:
            return "iPhone 7+ (GSM)"
        case .iPhone10_1:
            return "iPhone 8 (CDMA)"
        case .iPhone10_2:
            return "iPhone 8+ (CDMA)"
        case .iPhone10_3:
            return "iPhone X (CDMA)"
        case .iPhone10_4:
            return "iPhone 8 (GSM)"
        case .iPhone10_5:
            return "iPhone 8+ (GSM)"
        case .iPhone10_6:
            return "iPhone X (GSM)"
        case .iPhone11_2:
            return "iPhone Xs"
        case .iPhone11_4:
            return "iPhone Xs Max"
        case .iPhone11_6:
            return "iPhone Xs Max (Dual Sim)"
        case .iPhone11_8:
            return "iPhone XR"
        case .iPhone12_1:
            return "iPhone 11"
        case .iPhone12_3:
            return "iPhone 11 Pro"
        case .iPhone12_5:
            return "iPhone 11 Pro Max"
        case .iPhone12_8:
            return "iPhone SE 2nd"
        case .iPhone13_1:
            return "iPhone 12 Mini"
        case .iPhone13_2:
            return "iPhone 12"
        case .iPhone13_3:
            return "iPhone 12 Pro"
        case .iPhone13_4:
            return "iPhone 12 Pro Max"
        case .iPhone14_2:
            return "iPhone 13 Pro"
        case .iPhone14_3:
            return "iPhone 13 Pro Max"
        case .iPhone14_4:
            return "iPhone 13 Mini"
        case .iPhone14_5:
            return "iPhone 13"
        case .iPhone14_6:
            return "iPhone SE (3rd generation)"
        case .iPhone14_7:
            return "iPhone 14"
        case .iPhone14_8:
            return "iPhone 14 Plus"
        case .iPhone15_2:
            return "iPhone 14 Pro"
        case .iPhone15_3:
            return "iPhone 14 Pro Max"
        case .iPad2_1:
            return "iPad 2nd (WiFi)"
        case .iPad2_2:
            return "iPad 2nd (GSM)"
        case .iPad2_3:
            return "iPad 2nd (CDMA)"
        case .iPad2_4:
            return "iPad 2nd (Mid 2012)"
        case .iPad3_1:
            return "iPad 3rd (WiFi)"
        case .iPad3_2:
            return "iPad 3rd (CDMA)"
        case .iPad3_3:
            return "iPad 3rd (GSM)"
        case .iPad3_4:
            return "iPad 4th (WiFi)"
        case .iPad3_5:
            return "iPad 4th (GSM)"
        case .iPad3_6:
            return "iPad 4th (Global)"
        case .iPad4_1:
            return "iPad Air (WiFi)"
        case .iPad4_2:
            return "iPad Air (Cellular)"
        case .iPad4_3:
            return "iPad Air (China)"
        case .iPad5_3:
            return "iPad Air 2nd (WiFi)"
        case .iPad5_4:
            return "iPad Air 2nd (Cellular)"
        case .iPad6_11:
            return "iPad 5th (WiFi)"
        case .iPad6_12:
            return "iPad 5th (Cellular)"
        case .iPad7_5:
            return "iPad 6th (WiFi)"
        case .iPad7_6:
            return "iPad 6th (Cellular)"
        case .iPad7_11:
            return "iPad 7th (WiFi)"
        case .iPad7_12:
            return "iPad 7th (Cellular)"
        case .iPad11_3:
            return "iPad Air 3rd (WiFi)"
        case .iPad11_4:
            return "iPad Air 3rd (Cellular)"
        case .iPad11_6:
            return "iPad 8th (WiFi)"
        case .iPad11_7:
            return "iPad 8th (Cellular)"
        case .iPad12_1:
            return "iPad 9th (WiFi)"
        case .iPad12_2:
            return "iPad 9th (Cellular)"
        case .iPad13_1:
            return "iPad Air 4th (WiFi)"
        case .iPad13_2:
            return "iPad Air 4th (Cellular)"
        case .iPad13_16:
            return "iPad Air 5th Gen (WiFi)"
        case .iPad13_17:
            return "iPad Air 5th Gen (WiFi+Cellular)"
        case .iPad13_18:
            return "iPad 10th Gen"
        case .iPad13_19:
            return "iPad 10th Gen"
        case .iPad2_5:
            return "iPad Mini (WiFi)"
        case .iPad2_6:
            return "iPad Mini (GSM)"
        case .iPad2_7:
            return "iPad Mini (Global)"
        case .iPad4_4:
            return "iPad Mini 2nd (WiFi)"
        case .iPad4_5:
            return "iPad Mini 2nd (Cellular)"
        case .iPad4_6:
            return "iPad Mini 2nd (China)"
        case .iPad4_7:
            return "iPad Mini 3rd (WiFi)"
        case .iPad4_8:
            return "iPad Mini 3rd (Cellular)"
        case .iPad4_9:
            return "iPad Mini 3rd (China)"
        case .iPad5_1:
            return "iPad Mini 4th (WiFi)"
        case .iPad5_2:
            return "iPad Mini 4th (Cellular)"
        case .iPad11_1:
            return "iPad Mini 5th (WiFi)"
        case .iPad11_2:
            return "iPad Mini 5th (Cellular)"
        case .iPad14_1:
            return "iPad Mini 6th (Wi-Fi)"
        case .iPad14_2:
            return "iPad Mini 6th (Cellular)"
        case .iPad6_3:
            return "iPad Pro 9.7 (WiFi)"
        case .iPad6_4:
            return "iPad Pro 9.7 (Cellular)"
        case .iPad6_7:
            return "iPad Pro 12.9 (WiFi)"
        case .iPad6_8:
            return "iPad Pro 12.9 (Cellular)"
        case .iPad7_1:
            return "iPad Pro 12.9 2nd (WiFi)"
        case .iPad7_2:
            return "iPad Pro 12.9 2nd (Cellular)"
        case .iPad7_3:
            return "iPad Pro 10.5 (WiFi)"
        case .iPad7_4:
            return "iPad Pro 10.5 (Cellular)"
        case .iPad8_1:
            return "iPad Pro 11 (WiFi)"
        case .iPad8_2:
            return "iPad Pro 11 (WiFi) 1TB"
        case .iPad8_3:
            return "iPad Pro 11 (Cellular)"
        case .iPad8_4:
            return "iPad Pro 11 (Cellular) 1TB"
        case .iPad8_5:
            return "iPad Pro 12.9 3rd (WiFi)"
        case .iPad8_6:
            return "iPad Pro 12.9 3rd (WiFi) 1TB"
        case .iPad8_7:
            return "iPad Pro 12.9 3rd (Cellular)"
        case .iPad8_8:
            return "iPad Pro 12.9 3rd (Cellular) 1TB"
        case .iPad8_9:
            return "iPad Pro 11 2nd (WiFi)"
        case .iPad8_10:
            return "iPad Pro 11 2nd (Cellular)"
        case .iPad8_11:
            return "iPad Pro 12.9 4th (WiFi)"
        case .iPad8_12:
            return "iPad Pro 12.9 4th (Cellular)"
        case .iPad13_4:
            return "iPad Pro 11 3rd (WiFi)"
        case .iPad13_5:
            return "iPad Pro 11 3rd (WiFi) 1TB"
        case .iPad13_6:
            return "iPad Pro 11 3rd (Cellular)"
        case .iPad13_7:
            return "iPad Pro 11 3rd (Cellular) 1TB"
        case .iPad13_8:
            return "iPad Pro 12.9 5th (WiFi)"
        case .iPad13_9:
            return "iPad Pro 12.9 5th (WiFi) 1TB"
        case .iPad13_10:
            return "iPad Pro 12.9 5th (Cellular)"
        case .iPad13_11:
            return "iPad Pro 12.9 5th (Cellular) 1TB"
        case .iPad14_3:
            return "iPad Pro 11' (3rd generation)"
        case .iPad14_4:
            return "iPad Pro 11' (4th generation)"
        case .iPad14_5:
            return "iPad Pro 12.9 (6th generation)"
        case .iPad14_6:
            return "iPad Pro 12.9 (6th generation)"
        case .i386, .x86_64, .arm64:
            fallthrough
        case .unknown:
            return "simulator"
        }
    }
}
