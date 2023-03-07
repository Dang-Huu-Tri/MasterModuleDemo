//
//  GCDeviceModelIdentifier.swift
//  CGFingerPringtingSDK
//
//  Created by Tri.Dang on 05/01/2023.
//

import Foundation
import UIKit

public enum GCDeviceModelIdentifier: String, CaseIterable {
    // MARK: iPod
    case iPod1_1            = "iPod1,1"
    case iPod2_1            = "iPod2,1"
    case iPod3_1            = "iPod3,1"
    case iPod4_1            = "iPod4,1"
    case iPod5_1            = "iPod5,1"
    case iPod7_1            = "iPod7,1"
    case iPod9_1            = "iPod9,1"
    // MARK: iPhone
    case iPhone1_1          = "iPhone1,1"
    case iPhone1_2          = "iPhone1,2"
    case iPhone2_1          = "iPhone2,1"
    case iPhone3_1          = "iPhone3,1"
    case iPhone3_2          = "iPhone3,2"
    case iPhone3_3          = "iPhone3,3"
    case iPhone4_1          = "iPhone4,1"
    case iPhone5_1          = "iPhone5,1"
    case iPhone5_2          = "iPhone5,2"
    case iPhone5_3          = "iPhone5,3"
    case iPhone5_4          = "iPhone5,4"
    case iPhone6_1          = "iPhone6,1"
    case iPhone6_2          = "iPhone6,2"
    case iPhone7_1          = "iPhone7,1"
    case iPhone7_2          = "iPhone7,2"
    case iPhone8_1          = "iPhone8,1"
    case iPhone8_2          = "iPhone8,2"
    case iPhone8_4          = "iPhone8,4"
    case iPhone9_1          = "iPhone9,1"
    case iPhone9_2          = "iPhone9,2"
    case iPhone9_3          = "iPhone9,3"
    case iPhone9_4          = "iPhone9,4"
    case iPhone10_1         = "iPhone10,1"
    case iPhone10_2         = "iPhone10,2"
    case iPhone10_3         = "iPhone10,3"
    case iPhone10_4         = "iPhone10,4"
    case iPhone10_5         = "iPhone10,5"
    case iPhone10_6         = "iPhone10,6"
    case iPhone11_2         = "iPhone11,2"
    case iPhone11_4         = "iPhone11,4"
    case iPhone11_6         = "iPhone11,6"
    case iPhone11_8         = "iPhone11,8"
    case iPhone12_1         = "iPhone12,1"
    case iPhone12_3         = "iPhone12,3"
    case iPhone12_5         = "iPhone12,5"
    case iPhone12_8         = "iPhone12,8"
    case iPhone13_1         = "iPhone13,1"
    case iPhone13_2         = "iPhone13,2"
    case iPhone13_3         = "iPhone13,3"
    case iPhone13_4         = "iPhone13,4"
    case iPhone14_2         = "iPhone14,2"
    case iPhone14_3         = "iPhone14,3"
    case iPhone14_4         = "iPhone14,4"
    case iPhone14_5         = "iPhone14,5"
    case iPhone14_6         = "iPhone14,6"
    case iPhone14_7         = "iPhone14,7"
    case iPhone14_8         = "iPhone14,8"
    case iPhone15_2         = "iPhone15,2"
    case iPhone15_3         = "iPhone15,3"
    // MARK: iPad
    case iPad2_1            = "iPad2,1"
    case iPad2_2            = "iPad2,2"
    case iPad2_3            = "iPad2,3"
    case iPad2_4            = "iPad2,4"
    case iPad3_1            = "iPad3,1"
    case iPad3_2            = "iPad3,2"
    case iPad3_3            = "iPad3,3"
    case iPad3_4            = "iPad3,4"
    case iPad3_5            = "iPad3,5"
    case iPad3_6            = "iPad3,6"
    case iPad4_1            = "iPad4,1"
    case iPad4_2            = "iPad4,2"
    case iPad4_3            = "iPad4,3"
    case iPad5_3            = "iPad5,3"
    case iPad5_4            = "iPad5,4"
    case iPad6_11           = "iPad6,11"
    case iPad6_12           = "iPad6,12"
    case iPad7_5            = "iPad7,5"
    case iPad7_6            = "iPad7,6"
    case iPad7_11           = "iPad7,11"
    case iPad7_12           = "iPad7,12"
    case iPad11_3           = "iPad11,3"
    case iPad11_4           = "iPad11,4"
    case iPad11_6           = "iPad11,6"
    case iPad11_7           = "iPad11,7"
    case iPad12_1           = "iPad12,1"
    case iPad12_2           = "iPad12,2"
    case iPad13_1           = "iPad13,1"
    case iPad13_2           = "iPad13,2"
    case iPad13_16          = "iPad13,16"
    case iPad13_17          = "iPad13,17"
    case iPad13_18          = "iPad13,18"
    case iPad13_19          = "iPad13,19"
    // MARK: iPad Mini
    case iPad2_5            = "iPad2,5"
    case iPad2_6            = "iPad2,6"
    case iPad2_7            = "iPad2,7"
    case iPad4_4            = "iPad4,4"
    case iPad4_5            = "iPad4,5"
    case iPad4_6            = "iPad4,6"
    case iPad4_7            = "iPad4,7"
    case iPad4_8            = "iPad4,8"
    case iPad4_9            = "iPad4,9"
    case iPad5_1            = "iPad5,1"
    case iPad5_2            = "iPad5,2"
    case iPad11_1           = "iPad11,1"
    case iPad11_2           = "iPad11,2"
    case iPad14_1           = "iPad14,1"
    case iPad14_2           = "iPad14,2"
    // MARK: iPad Pro
    case iPad6_3            = "iPad6,3"
    case iPad6_4            = "iPad6,4"
    case iPad6_7            = "iPad6,7"
    case iPad6_8            = "iPad6,8"
    case iPad7_1            = "iPad7,1"
    case iPad7_2            = "iPad7,2"
    case iPad7_3            = "iPad7,3"
    case iPad7_4            = "iPad7,4"
    case iPad8_1            = "iPad8,1"
    case iPad8_2            = "iPad8,2"
    case iPad8_3            = "iPad8,3"
    case iPad8_4            = "iPad8,4"
    case iPad8_5            = "iPad8,5"
    case iPad8_6            = "iPad8,6"
    case iPad8_7            = "iPad8,7"
    case iPad8_8            = "iPad8,8"
    case iPad8_9            = "iPad8,9"
    case iPad8_10           = "iPad8,10"
    case iPad8_11           = "iPad8,11"
    case iPad8_12           = "iPad8,12"
    case iPad13_4           = "iPad13,4"
    case iPad13_5           = "iPad13,5"
    case iPad13_6           = "iPad13,6"
    case iPad13_7           = "iPad13,7"
    case iPad13_8           = "iPad13,8"
    case iPad13_9           = "iPad13,9"
    case iPad13_10          = "iPad13,10"
    case iPad13_11          = "iPad13,11"
    case iPad14_3           = "iPad14,3"
    case iPad14_4           = "iPad14,4"
    case iPad14_5           = "iPad14,5"
    case iPad14_6           = "iPad14,6"
    // MARK: Simulator
    case i386               = "i386"
    case x86_64             = "x86_64"
    case arm64              = "arm64"
    // MARK: Unknown
    case unknown
    
    func cpu() -> String {
        switch self {
            /// Simulator
        case .i386, .x86_64, .arm64:
            return "N/A"
            /// iPhone, iPod touch (1st), iPhone 3G
        case .iPod1_1, .iPhone1_1, .iPhone1_2:
            return "412MHz 1-core"
            /// iPod touch (2nd)
        case .iPod2_1:
            return "533MHz 1-core"
            /// iPhone 3GS
        case .iPhone2_1:
            return "600MHz 1-core"
            /// iPod touch (3rd)
        case .iPod3_1:
            return "800MHz 1-core"
            /// iPhone 4, iPad (1st), iPod touch (4th)
            /// Apple A4
        case .iPod4_1, .iPhone3_1, .iPhone3_2, .iPhone3_3:
            return "1.0GHz 1-core"
            /// iPhone 4s, iPad 2, iPod touch (5th), iPad mini (1st)
            /// Apple A5
        case .iPhone4_1, .iPod5_1, .iPad2_5, .iPad2_6, .iPad2_7, .iPad2_1, .iPad2_2, .iPad2_3, .iPad2_4:
            return "1.0GHz 2-core"
            /// iPad (3rd)
            /// Apple A5X
        case .iPad3_1, .iPad3_2, .iPad3_3:
            return "1.0GHz 2-core"
            /// iPhone 5, iPhone 5c
            /// Apple A6
        case .iPhone5_1, .iPhone5_2, .iPhone5_3, .iPhone5_4:
            return "1.3GHz 2-core"
            /// iPad (4th)
            /// Apple A6X
        case .iPad3_4, .iPad3_5, .iPad3_6:
            return "1.4GHz 2-core"
            /// iPhone 5s, iPad mini 2, iPad mini 3
            /// Apple A7
        case .iPhone6_1, .iPhone6_2, .iPad4_4, .iPad4_5, .iPad4_6, .iPad4_7, .iPad4_8, .iPad4_9:
            return "1.3GHz 2-core"
            /// iPad Air (1st)
            /// Apple A7
        case .iPad4_1, .iPad4_2, .iPad4_3:
            return "1.4GHz 2-core"
            /// iPhone 6/6 Plus, iPod touch (6th), iPad mini 4
            /// Apple A8
        case .iPhone7_1, .iPhone7_2, .iPod7_1, .iPad5_1, .iPad5_2:
            return "1.5GHz 2-core"
            /// iPad Air (2nd)
            /// Apple A8
        case .iPad5_4, .iPad5_3:
            return "1.5GHz 3-core"
            /// iPhone 6s/6s Plus, iPhone SE (1st), iPad (5th)
            /// Apple A9
        case .iPhone8_1, .iPhone8_2, .iPhone8_4, .iPad6_11, .iPad6_12:
            return "1.85GHz 2-core"
            /// iPad Pro (1st)
            /// Apple A9X
        case .iPad6_3, .iPad6_4, .iPad6_7, .iPad6_8:
            return "2.26GHz 2-core"
            /// iPhone 7/7 Plus, iPad (6th), iPod touch (7th), iPad (7th)
            /// Apple A10 Fusion
        case .iPhone9_1, .iPhone9_2, .iPhone9_3, .iPhone9_4, .iPad7_5, .iPad7_6, .iPod9_1, .iPad7_11, .iPad7_12:
            return "2.34GHz 4-core"
            /// iPad Pro (2nd)
            /// Apple A10X Fusion
        case .iPad7_1, .iPad7_2, .iPad7_3, .iPad7_4:
            return "2.36GHz 6-core"
            /// iPhone 8/8 Plus, iPhone X
            /// Apple A11 Bionic
        case .iPhone10_1, .iPhone10_2, .iPhone10_3, .iPhone10_4, .iPhone10_5, .iPhone10_6:
            return "2.39GHz 6-core"
            /// iPhone XS/XS Max, iPhone XR, iPad Air (3rd), iPad mini (5th), iPad (8th)
            /// Apple A12 Bionic
        case .iPhone11_2, .iPhone11_4, .iPhone11_6, .iPhone11_8, .iPad11_3, .iPad11_4, .iPad11_1, .iPad11_2, .iPad11_6, .iPad11_7:
            return "2.49 GHz 6-core"
            /// iPad Pro (3rd), iPad Pro (4th)
            /// Apple A12X/A12Z Bionic
        case .iPad8_1, .iPad8_2, .iPad8_3, .iPad8_4, .iPad8_5, .iPad8_6, .iPad8_7, .iPad8_8, .iPad8_9, .iPad8_10, .iPad8_11, .iPad8_12:
            return "2.49GHz 8-core"
            /// iPhone 11, iPhone 11 Pro/11 Pro Max, iPhone SE (2nd), iPad (9th)
            /// Apple A13 Bionic
        case .iPhone12_1, .iPhone12_3, .iPhone12_5, .iPhone12_8, .iPad12_2, .iPad12_1:
            return "2.65GHz 6-core"
            /// iPhone 12/12 mini, iPhone 12 Pro/12 Pro Max, iPad Air (4th), iPad (10th)
            /// Apple A14 Bionic
        case .iPhone13_1, .iPhone13_2, .iPhone13_3, .iPhone13_4, .iPad13_1, .iPad13_2, .iPad13_18, .iPad13_19:
            return "2.99GHz 6-core"
            /// iPad Pro (5th), iPad Air (5th)
            /// Apple M1
        case .iPad13_4, .iPad13_5, .iPad13_6, .iPad13_7, .iPad13_8, .iPad13_9, .iPad13_10, .iPad13_11, .iPad13_16, .iPad13_17:
            return "3.2GHz 8-core"
            /// iPhone 13/13 mini, iPhone 13 Pro/13 Pro Max, iPhone SE (3rd), iPhone 14/14 Plus
            /// Apple A15 Bionic
        case .iPhone14_4, .iPhone14_5, .iPhone14_2, .iPhone14_3, .iPhone14_6, .iPhone14_7, .iPhone14_8:
            return "3.23GHz 6-core"
            /// iPad mini (6th)
            /// Apple A15 Bionic
        case .iPad14_2, .iPad14_1:
            return "2.93GHz 6-core"
            /// iPhone 14 Pro/14 Pro Max
            /// Apple A16 Bionic
        case .iPhone15_2, .iPhone15_3:
            return "3.46GHz 6-core"
            /// iPad Pro (6th)
            /// Apple M2
        case .iPad14_3, .iPad14_4, .iPad14_5, .iPad14_6:
            return "3.49GHz 6-core"
        case .unknown:
            return "Unknown"
        }
    }
    
    func gpu() -> String {
        switch self {
         /// Simulator
        case .i386, .x86_64, .arm64:
            return "N/A"
         /// iPhone, iPod touch (1st), iPhone 3G
        case .iPod1_1, .iPhone1_1, .iPhone1_2:
            return "PowerVR MBX Lite"
         /// iPod touch (2nd)
        case .iPod2_1:
            return "PowerVR MBX Lite"
         /// iPhone 3GS
        case .iPhone2_1:
            return "PowerVR SGX535"
         /// iPod touch (3rd)
        case .iPod3_1:
            return "PowerVR SGX535"
         /// iPhone 4, iPad (1st), iPod touch (4th)
        case .iPod4_1, .iPhone3_1, .iPhone3_2, .iPhone3_3:
            return "PowerVR SGX535"
         /// iPhone 4s, iPad 2, iPod touch (5th), iPad mini (1st)
        case .iPhone4_1, .iPod5_1, .iPad2_5, .iPad2_6, .iPad2_7, .iPad2_1, .iPad2_2, .iPad2_3, .iPad2_4:
            return "PowerVR SGX543MP2 2-core"
         /// iPad (3rd)
        case .iPad3_1, .iPad3_2, .iPad3_3:
            return "PowerVR SGX554MP4 4-core"
         /// iPhone 5, iPhone 5c
        case .iPhone5_1, .iPhone5_2, .iPhone5_3, .iPhone5_4:
            return "PowerVR SGX543MP3 3-core"
         /// iPad (4th)
        case .iPad3_4, .iPad3_5, .iPad3_6:
            return "PowerVR SGX554MP4 4-core"
         /// iPhone 5s, iPad mini 2, iPad mini 3, iPad Air (1st)
        case .iPhone6_1, .iPhone6_2, .iPad4_4, .iPad4_5, .iPad4_6, .iPad4_7, .iPad4_8, .iPad4_9, .iPad4_1, .iPad4_2, .iPad4_3:
            return "PowerVR G6430 4-core"
         /// iPhone 6/6 Plus, iPod touch (6th), iPad mini 4
        case .iPhone7_1, .iPhone7_2, .iPod7_1, .iPad5_1, .iPad5_2:
            return "PowerVR GXA6450 4-core"
         /// iPad Air (2nd)
        case .iPad5_4, .iPad5_3:
            return "PowerVR GXA6850 8-core"
         /// iPhone 6s/6s Plus, iPhone SE (1st), iPad (5th)
        case .iPhone8_1, .iPhone8_2, .iPhone8_4, .iPad6_11, .iPad6_12:
            return "PowerVR GT7600 6-core"
         /// iPad Pro (1st)
        case .iPad6_3, .iPad6_4, .iPad6_7, .iPad6_8:
            return "PowerVR GTA7850 12-core"
         /// iPhone 7/7 Plus, iPad (6th), iPod touch (7th), iPad (7th)
        case .iPhone9_1, .iPhone9_2, .iPhone9_3, .iPhone9_4, .iPad7_5, .iPad7_6, .iPod9_1, .iPad7_11, .iPad7_12:
            return "PowerVR GT7600 Plus 6-core"
         /// iPad Pro (2nd)
        case .iPad7_1, .iPad7_2, .iPad7_3, .iPad7_4:
            return "PowerVR GT7600 Plus 12-core"
        /// iPhone 8/8 Plus, iPhone X
        /// Apple A11 Bionic
        case .iPhone10_1, .iPhone10_2, .iPhone10_3, .iPhone10_4, .iPhone10_5, .iPhone10_6:
            return "3-core"
        /// iPhone XS/XS Max, iPhone XR, iPad Air (3rd), iPad mini (5th), iPad (8th)
        /// Apple A12 Bionic
        case .iPhone11_2, .iPhone11_4, .iPhone11_6, .iPhone11_8, .iPad11_3, .iPad11_4, .iPad11_1, .iPad11_2, .iPad11_6, .iPad11_7:
            return "4-core"
        /// iPad Pro (3rd)
        /// Apple A12X Bionic
        case .iPad8_1, .iPad8_2, .iPad8_3, .iPad8_4, .iPad8_5, .iPad8_6, .iPad8_7, .iPad8_8:
            return "7-core"
        /// iPad Pro (4th)
        /// Apple A12Z Bionic
        case .iPad8_9, .iPad8_10, .iPad8_11, .iPad8_12:
            return "8-core"
        /// iPhone 11, iPhone 11 Pro/11 Pro Max, iPhone SE (2nd), iPad (9th)
        /// Apple A13 Bionic
        case .iPhone12_1, .iPhone12_3, .iPhone12_5, .iPhone12_8, .iPad12_2, .iPad12_1:
            return "4-core"
        /// iPhone 12/12 mini, iPhone 12 Pro/12 Pro Max, iPad Air (4th), iPad (10th)
        /// Apple A14 Bionic
        case .iPhone13_1, .iPhone13_2, .iPhone13_3, .iPhone13_4, .iPad13_1, .iPad13_2, .iPad13_18, .iPad13_19:
            return "4-core"
        /// iPad Pro (5th), iPad Air (5th)
        /// Apple M1
        case .iPad13_4, .iPad13_5, .iPad13_6, .iPad13_7, .iPad13_8, .iPad13_9, .iPad13_10, .iPad13_11, .iPad13_16, .iPad13_17:
            return "8-core"
        /// iPhone 13 Pro/13 Pro Max, iPad mini (6th), iPhone 14/14 Plus
        /// Apple A15 Bionic
        case .iPhone14_2, .iPhone14_3, .iPad14_2, .iPad14_1, .iPhone14_7, .iPhone14_8:
            return "5-core"
        /// iPhone 13/13 mini, iPhone SE (3rd)
        /// Apple A15 Bionic
        case .iPhone14_4, .iPhone14_5, .iPhone14_6:
            return "4-core"
        /// iPhone 14 Pro/14 Pro Max
        /// Apple A15 Bionic
        case .iPhone15_2, .iPhone15_3:
            return "5-core"
        /// iPad Pro (6th)
        /// Apple M2
        case .iPad14_3, .iPad14_4, .iPad14_5, .iPad14_6:
            return "10-core"
        case .unknown:
            return "Unknown"
        }
    }
    
    func neuralEngine() -> String {
        switch self {
        /// Simulator
        case .i386, .x86_64, .arm64:
            return "N/A"
        /// Apple A11 Bionic
        case .iPhone10_1, .iPhone10_2, .iPhone10_3, .iPhone10_4, .iPhone10_5, .iPhone10_6:
            return "2-core"
        /// iPhone XS/XS Max, iPhone XR, iPad Air (3rd), iPad mini (5th), iPad (8th)
        /// Apple A12 Bionic
        case .iPhone11_2, .iPhone11_4, .iPhone11_6, .iPhone11_8, .iPad11_3, .iPad11_4, .iPad11_1, .iPad11_2, .iPad11_6, .iPad11_7:
            return "8-core"
        /// iPad Pro (3rd), iPad Pro (4th)
        /// Apple A12X/A12Z Bionic
        case .iPad8_1, .iPad8_2, .iPad8_3, .iPad8_4, .iPad8_5, .iPad8_6, .iPad8_7, .iPad8_8, .iPad8_9, .iPad8_10, .iPad8_11, .iPad8_12:
            return "8-core"
        /// iPhone 11, iPhone 11 Pro/11 Pro Max, iPhone SE (2nd), iPad (6th)
        /// Apple A13 Bionic
        case .iPhone12_1, .iPhone12_3, .iPhone12_5, .iPhone12_8, .iPad12_2, .iPad12_1:
            return "8-core"
        /// iPhone 12/12 mini, iPhone 12 Pro/12 Pro Max, iPad Air (4th), iPad (10th)
        /// Apple A14 Bionic
        /// 11 TOPS
        case .iPhone13_1, .iPhone13_2, .iPhone13_3, .iPhone13_4, .iPad13_1, .iPad13_2, .iPad13_18, .iPad13_19:
            return "16-core"
        /// iPad Pro (5th), iPad Air (3rd)
        /// Apple M1
        /// 11 TOPS
        case .iPad13_4, .iPad13_5, .iPad13_6, .iPad13_7, .iPad13_8, .iPad13_9, .iPad13_10, .iPad13_11, .iPad13_16, .iPad13_17:
            return "16-core"
        /// iPhone 13/13 mini, iPhone 13 Pro/13 Pro Max, iPad mini (6th), iPhone SE (3rd)
        /// Apple A15 Bionic
        /// 15.8 TOPS
        case .iPhone14_4, .iPhone14_5, .iPhone14_2, .iPhone14_3, .iPad14_2, .iPad14_1, .iPhone14_6, .iPhone14_7, .iPhone14_8:
            return "16-core"
        /// iPhone 14 Pro/14 Pro Max
        /// Apple A16 Bionic
        /// 17 TOPS
        case .iPhone15_2, .iPhone15_3:
            return "16-core"
        /// iPad Pro (6th)
        /// Apple M2
        /// 15.8 TOPS
        case .iPad14_3, .iPad14_4, .iPad14_5, .iPad14_6:
            return "16-core"
        /// Other device
        default:
            return "None"
        }
    }
}
