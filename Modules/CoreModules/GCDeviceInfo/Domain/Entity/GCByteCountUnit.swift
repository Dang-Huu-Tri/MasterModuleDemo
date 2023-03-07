//
//  CGByteCountUnit.swift
//  CGFingerPringtingSDK
//
//  Created by Tri.Dang on 11/01/2023.
//

import Foundation

public enum GCByteCountUnit {
    case byte
    case kilobyte
    case megabyte
    case gigabyte
    case terabyte
    case petabyte
    case zettabyte
}

public extension GCByteCountUnit {
    var toByteCountUnit: ByteCountFormatter.Units {
        switch self {
        case .byte:
            return .useBytes
        case .kilobyte:
            return .useKB
        case .megabyte:
            return .useMB
        case .gigabyte:
            return .useGB
        case .terabyte:
            return .useTB
        case .petabyte:
            return .usePB
        case .zettabyte:
            return .useZB
        }
    }
}
 
