//
//  CGDiskInfo.swift
//  CGFingerPringtingSDK
//
//  Created by Tri.Dang on 12/01/2023.
//

import Foundation

@objc public protocol GCDiskInfoProtocol: NSObjectProtocol {
    var volumes: [GCVolumeInfo] { get }
    func getMountedRootVolume(_ osVersion: GCOSVersionProtocol) -> String
}
