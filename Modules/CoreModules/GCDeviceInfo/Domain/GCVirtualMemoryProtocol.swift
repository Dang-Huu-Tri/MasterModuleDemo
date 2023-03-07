//
//  GCVirtualMemoryProtocol.swift
//  CGFingerPringtingSDK
//
//  Created by Tri.Dang on 12/01/2023.
//

import Foundation

@objc public protocol GCVirtualMemoryProtocol: NSObjectProtocol {
    var freeBytes: Int64 { get }
    var activeBytes: Int64 { get }
    var inactiveBytes: Int64 { get }
    var wireBytes: Int64 { get }
    var purgeableBytes: Int64 { get }
    var speculativeBytes: Int64 { get }
    var throttledBytes: Int64 { get }
    var externalBytes: Int64 { get }
    var internalBytes: Int64 { get }
}

