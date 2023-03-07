//
//  GCStorageInfo.swift
//  CGFingerPringtingSDK
//
//  Created by Tri.Dang on 11/01/2023.
//

import Foundation

@objc public protocol GCStorageInfoProtocol: NSObjectProtocol {
    var freeMemoryInBytes: Int64 { get }
    var totalMemoryInBytes: Int64 { get }
    var freeDiskSpaceInBytes: Int64 { get }
    var totalDiskSpaceInBytes: Int64 { get }
    var usedDiskSpaceInBytes: Int64 { get }
    var virtualMemory: GCVirtualMemoryProtocol { get }
}
