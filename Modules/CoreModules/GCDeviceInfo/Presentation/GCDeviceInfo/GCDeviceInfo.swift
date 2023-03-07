//
//  GCDeviceInfo.swift
//  CGFingerPringtingSDK
//
//  Created by Tri.Dang on 10/01/2023.
//

import Foundation
import UIKit

class GCDeviceInfo: NSObject, GCDeviceInfoProtocol {
    fileprivate var device: UIDevice
    public private(set) var batteryInfo: GCBatteryInfoProtocol?
    public private(set) var generalInfo: GCDeviceModelInfoProtocol?
    public private(set) var bundleInfo: GCBundleInfoProtocol?
    public private(set) var displayInfo: GCDisplayInfoProtocol?
    public private(set) var cellularInfo: GCCellularInfoProtocol?
    public private(set) var localizationInfo: GCLocalizationInfoProtocol?
    public private(set) var processInfo: GCProcessInfoProtocol?
    public private(set) var storageInfo: GCStorageInfoProtocol?
    public private(set) var diskInfo: GCDiskInfoProtocol?
    
    public init(device: UIDevice,
                batteryInfo: GCBatteryInfoProtocol,
                generalInfo: GCDeviceModelInfoProtocol,
                bundleInfo: GCBundleInfoProtocol,
                displayInfo: GCDisplayInfoProtocol,
                cellularInfo: GCCellularInfoProtocol,
                localizationInfo: GCLocalizationInfoProtocol,
                processInfo: GCProcessInfoProtocol,
                storageInfo: GCStorageInfoProtocol,
                diskInfo: GCDiskInfoProtocol) {
        self.device = device
        self.batteryInfo = batteryInfo
        self.generalInfo = generalInfo
        self.bundleInfo = bundleInfo
        self.displayInfo = displayInfo
        self.cellularInfo = cellularInfo
        self.localizationInfo = localizationInfo
        self.processInfo = processInfo
        self.storageInfo = storageInfo
        self.diskInfo = diskInfo
    }
    
    public func fileInfoWith(path: String, fileManager: FileManager) -> GCFileInfoProtocol? {
        return GCFileInfo(path: path, fileManager: fileManager)
    }
}



