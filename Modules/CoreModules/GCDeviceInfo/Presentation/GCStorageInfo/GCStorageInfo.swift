//
//  GCStorageInfoProtocol.swift
//  CGFingerPringtingSDK
//
//  Created by Tri.Dang on 11/01/2023.
//

import Foundation
import MachO
import SystemConfiguration

class GCStorageInfo: NSObject {
    public private(set) var virtualMemory: GCVirtualMemoryProtocol
    public init(virtualMemory: GCVirtualMemoryProtocol = GCVirtualMemory()) {
        self.virtualMemory = virtualMemory
    }
}
extension GCStorageInfo: GCStorageInfoProtocol {
    public var freeMemoryInBytes: Int64 {
        var usedBytes: Int64 = 0
        var info = mach_task_basic_info()
        var count = mach_msg_type_number_t(MemoryLayout<mach_task_basic_info>.size)/4
        let kerr: kern_return_t = withUnsafeMutablePointer(to: &info) {
            $0.withMemoryRebound(to: integer_t.self, capacity: 1) {
                task_info(
                    mach_task_self_,
                    task_flavor_t(MACH_TASK_BASIC_INFO),
                    $0,
                    &count
                )
            }
        }
        if kerr == KERN_SUCCESS {
            usedBytes = Int64(info.resident_size)
        }
        return usedBytes
    }
    
    public var totalMemoryInBytes: Int64 {
        let totalMemory = Int64(ProcessInfo.processInfo.physicalMemory)
        return totalMemory
    }
    
    public var freeDiskSpaceInBytes: Int64 {
        let systemAttributes = try? FileManager.default.attributesOfFileSystem(forPath: NSHomeDirectory() as String)
        let freeSpace = (systemAttributes?[FileAttributeKey.systemFreeSize] as? NSNumber)?.int64Value
        return freeSpace ?? 0
    }
    
    public var totalDiskSpaceInBytes: Int64 {
        let systemAttributes = try? FileManager.default.attributesOfFileSystem(forPath: NSHomeDirectory() as String)
        let space = (systemAttributes?[FileAttributeKey.systemSize] as? NSNumber)?.int64Value
        return space ?? 0
    }
    
    public var usedDiskSpaceInBytes: Int64 {
        let usedSpace = totalDiskSpaceInBytes - freeDiskSpaceInBytes
        return usedSpace
    }
}
