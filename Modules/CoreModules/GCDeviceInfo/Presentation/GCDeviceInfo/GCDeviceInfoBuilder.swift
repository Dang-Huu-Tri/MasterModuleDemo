//
//  GCDeviceInfoBuilder.swift
//  CGFingerPringtingSDK
//
//  Created by Tri.Dang on 15/01/2023.
//

import Foundation
import UIKit

@objcMembers
public class GCDeviceInfoBuilder: NSObject {
    public var deviceInfo: GCDeviceInfoProtocol? {
        let curDevice = UIDevice.current
        return GCDeviceInfo(device: curDevice,
                            batteryInfo: CGBatteryInfo(curDevice),
                            generalInfo: GCDeviceModelInfo(),
                            bundleInfo: GCBundleInfo(bundle: Bundle.main),
                            displayInfo: GCDisplayInfo(screen: UIScreen.main, device: curDevice),
                            cellularInfo: GCCellularInfo(),
                            localizationInfo: GCLocalizationInfo(),
                            processInfo: GCProcessInfo(),
                            storageInfo: GCStorageInfo(),
                            diskInfo: GCDiskInfo())
    }
    
    public override init() { }
    
    public func build(device: UIDevice = .current,
                batteryInfo: GCBatteryInfoProtocol,
                generalInfo: GCDeviceModelInfoProtocol,
                bundleInfo: GCBundleInfoProtocol,
                displayInfo: GCDisplayInfoProtocol,
                cellularInfo: GCCellularInfoProtocol,
                localizationInfo: GCLocalizationInfoProtocol,
                processInfo: GCProcessInfoProtocol,
                storageInfo: GCStorageInfoProtocol,
                diskInfo: GCDiskInfoProtocol) -> GCDeviceInfoProtocol? {
        return GCDeviceInfo(device: device,
                            batteryInfo: batteryInfo,
                            generalInfo: generalInfo,
                            bundleInfo: bundleInfo,
                            displayInfo: displayInfo,
                            cellularInfo: cellularInfo,
                            localizationInfo: localizationInfo,
                            processInfo: processInfo,
                            storageInfo: storageInfo,
                            diskInfo: diskInfo)
    }
}
