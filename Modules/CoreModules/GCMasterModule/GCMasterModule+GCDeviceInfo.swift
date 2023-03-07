//
//  GCMasterModule+GCDeviceInfo.swift
//  SampleDI
//
//  Created by Tri.Dang on 27/02/2023.
//

import Foundation
import GCDeviceInfo

extension GCMasterModule {
    var deviceInfo: GCDeviceInfoProtocol? {
        return self.resolve(by: GCDeviceInfoProtocol.self)
    }
}

extension GCMasterModule: GCDeviceInfoProtocol {
    public var batteryInfo: GCDeviceInfo.GCBatteryInfoProtocol? {
        return self.deviceInfo?.batteryInfo
    }
    
    public var generalInfo: GCDeviceInfo.GCDeviceModelInfoProtocol? {
        return self.deviceInfo?.generalInfo
    }
    
    public var bundleInfo: GCDeviceInfo.GCBundleInfoProtocol? {
        return self.deviceInfo?.bundleInfo
    }
    
    public var displayInfo: GCDeviceInfo.GCDisplayInfoProtocol? {
        return self.deviceInfo?.displayInfo
    }
    
    public var cellularInfo: GCDeviceInfo.GCCellularInfoProtocol? {
        return self.deviceInfo?.cellularInfo
    }
    
    public var localizationInfo: GCDeviceInfo.GCLocalizationInfoProtocol? {
        return self.deviceInfo?.localizationInfo
    }
    
    public var processInfo: GCDeviceInfo.GCProcessInfoProtocol? {
        return self.deviceInfo?.processInfo
    }
    
    public var storageInfo: GCDeviceInfo.GCStorageInfoProtocol? {
        return self.deviceInfo?.storageInfo
    }
    
    public var diskInfo: GCDeviceInfo.GCDiskInfoProtocol? {
        return self.deviceInfo?.diskInfo
    }
    
    public func fileInfoWith(path: String, fileManager: FileManager) -> GCDeviceInfo.GCFileInfoProtocol? {
        return self.deviceInfo?.fileInfoWith(path: path, fileManager: fileManager)
    }
    
    
}
