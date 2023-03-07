//
//  ViewController+MasterModule.swift
//  SampleDI
//
//  Created by Tri.Dang on 01/03/2023.
//

import Foundation
import UIKit
//import LocationFrameWork
//import GCMasterModule
//import GCDeviceInfo
//import GCClient

extension ViewController {
    
    @IBAction func startLocationServicePressed(_ sender: Any) {
        GeoComplySDK().startLocationService()
//        GCMasterModule.shared.locationService?.startLocationServices()
    }
    
    @IBAction func collectingDeviceInfoPressed(_ sender: Any) {
        let message = GeoComplySDK().getDeviceInfo()
//        let message = """
//                        isJailBreak: \(GCMasterModule.shared.displayInfo?.isJailBreak ?? false)
//                        SystemName: \(GCMasterModule.shared.displayInfo?.systemName ?? "")
//                        Device Orientation: \(GCMasterModule.shared.displayInfo?.deviceOrientation ?? "")
//                        device name: \(GCMasterModule.shared.displayInfo?.deviceOrientation ?? "")
//                    """
        self.showAlertController(title: "Info", message: message, cancelButtonTitle: "OK")
    }
    
    func setupMasterModule() {
        GCMasterModule.shared.defaultSetupAllModule()
    }
}
