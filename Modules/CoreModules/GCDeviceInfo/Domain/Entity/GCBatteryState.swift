//
//  CGBatteryState.swift
//  CGFingerPringtingSDK
//
//  Created by Tri.Dang on 10/01/2023.
//

import Foundation

public enum GCBatteryState: String, Equatable, CaseIterable {
    case full
    case unknown
    case unplugged
    case charging
    
    public static func == (lhs: Self, rhs: Self) -> Bool {
        switch (lhs, rhs) {
        case (.full, .full):
            fallthrough
        case (.unplugged, .unplugged):
            fallthrough
        case (.charging, .charging):
            return true
        case (.unknown, .unknown):
            return true
        default:
            return false
        }
    }
}

