//
//  ByteCountFormatter+FormatBytes.swift
//  GCDeviceInfo
//
//  Created by Tri.Dang on 22/02/2023.
//

import Foundation

public extension ByteCountFormatter {
    class func formatDiskSpace(_ bytes: Int64, units: GCByteCountUnit) -> String {
        let unsignedBytes =  bytes < 0 ? 0 : bytes
        let formatter = ByteCountFormatter()
        formatter.includesUnit = unsignedBytes > 0
        formatter.allowedUnits = units.toByteCountUnit
        formatter.countStyle = ByteCountFormatter.CountStyle.binary
        return formatter.string(fromByteCount: unsignedBytes)
    }
    
    class func formatMemory(_ bytes: Int64, units: GCByteCountUnit) -> String {
        let unsignedBytes =  bytes < 0 ? 0 : bytes
        let formatter = ByteCountFormatter()
        formatter.includesUnit = unsignedBytes > 0
        formatter.allowedUnits = units.toByteCountUnit
        formatter.countStyle = ByteCountFormatter.CountStyle.memory
        return formatter.string(fromByteCount: unsignedBytes)
    }
}

