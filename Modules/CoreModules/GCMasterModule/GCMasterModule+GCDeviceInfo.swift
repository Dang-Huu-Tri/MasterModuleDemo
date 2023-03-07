//
//  GCMasterModule+GCDeviceInfo.swift
//  SampleDI
//
//  Created by Tri.Dang on 27/02/2023.
//

import Foundation
#if canImport(GCDeviceInfo)
import GCDeviceInfo
#endif

extension GCMasterModule {
    var deviceInfo: GCDeviceInfoProtocol? {
        return self.resolve(by: GCDeviceInfoProtocol.self)
    }
}

extension GCMasterModule: GCDeviceInfoProtocol {
    public var batteryInfo: GCBatteryInfoProtocol? {
        return self.deviceInfo?.batteryInfo
    }
    
    public var generalInfo: GCDeviceModelInfoProtocol? {
        return self.deviceInfo?.generalInfo
    }
    
    public var bundleInfo: GCBundleInfoProtocol? {
        return self.deviceInfo?.bundleInfo
    }
    
    public var displayInfo: GCDisplayInfoProtocol? {
        return self.deviceInfo?.displayInfo
    }
    
    public var cellularInfo: GCCellularInfoProtocol? {
        return self.deviceInfo?.cellularInfo
    }
    
    public var localizationInfo: GCLocalizationInfoProtocol? {
        return self.deviceInfo?.localizationInfo
    }
    
    public var processInfo: GCProcessInfoProtocol? {
        return self.deviceInfo?.processInfo
    }
    
    public var storageInfo: GCStorageInfoProtocol? {
        return self.deviceInfo?.storageInfo
    }
    
    public var diskInfo: GCDiskInfoProtocol? {
        return self.deviceInfo?.diskInfo
    }
    
    public func fileInfoWith(path: String, fileManager: FileManager) -> GCFileInfoProtocol? {
        return self.deviceInfo?.fileInfoWith(path: path, fileManager: fileManager)
    }
    
    
}
