//
//  GCDeviceInfoProtocol.swift
//  CGFingerPringtingSDK
//
//  Created by Tri.Dang on 11/01/2023.
//

import Foundation

@objc public protocol GCDeviceInfoProtocol: NSObjectProtocol {
    var batteryInfo: GCBatteryInfoProtocol? { get }
    var generalInfo: GCDeviceModelInfoProtocol? { get }
    var bundleInfo: GCBundleInfoProtocol? { get }
    var displayInfo: GCDisplayInfoProtocol? { get }
    var cellularInfo: GCCellularInfoProtocol? { get }
    var localizationInfo: GCLocalizationInfoProtocol? { get }
    var processInfo: GCProcessInfoProtocol? { get }
    var storageInfo: GCStorageInfoProtocol? { get }
    var diskInfo: GCDiskInfoProtocol? { get }
    func fileInfoWith(path: String, fileManager: FileManager) -> GCFileInfoProtocol?
}
