//
//  GeoComplySDK.swift
//  GCClient
//
//  Created by Tri.Dang on 04/03/2023.
//

import Foundation
import GCMasterModule

public class GeoComplySDK {
    public required init() {
        GCMasterModule.shared.defaultSetupAllModule()
    }
    
    public func geolocate() {
        
    }
    
    public func getDeviceInfo() -> String {
        let message = """
                        isJailBreak: \(GCMasterModule.shared.displayInfo?.isJailBreak ?? false)
                        SystemName: \(GCMasterModule.shared.displayInfo?.systemName ?? "")
                        Device Orientation: \(GCMasterModule.shared.displayInfo?.deviceOrientation ?? "")
                        device name: \(GCMasterModule.shared.displayInfo?.deviceOrientation ?? "")
                    """
        return message
    }
    
    public func startLocationService() {
        GCMasterModule.shared.locationService?.startLocationServices()
    }
}
