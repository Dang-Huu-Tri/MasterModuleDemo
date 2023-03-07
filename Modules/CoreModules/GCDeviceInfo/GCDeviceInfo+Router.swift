//
//  GCDeviceInfo+Router.swift
//  GCDeviceInfo
//
//  Created by Tri.Dang on 01/03/2023.
//

import Foundation
import UIKit
#if canImport(GCRouter)
import GCRouter
#endif



public class GCDeviceInfoRouterHandler: GCRouterProtocol {
    public static func registerRouterItems() {
        GCRouter.register(items: [
            GCRouterItem(module: "DeviceInfo", url: "^http(s?)://(.*)(geocomply.vn|geocomply.atlassian)/collect/deviceInfo", handlerBlock: deviceInfoBlock, matchType: .regexp)
        ])
    }
    
    public static func handleURL(urlString: String, settings: GCRouterItemSettingProtocol?) -> UIViewController? {
        return nil
    }
    
    private static var deviceInfoBlock: (String, GCRouterItemSettingProtocol?) -> UIViewController? = { urlString, settings in
        let deviceInfo: GCDeviceInfoProtocol? = GCDeviceInfoBuilder().deviceInfo
        let message = """
                        isJailBreak: \(deviceInfo?.displayInfo?.isJailBreak ?? false)
                        SystemName: \(deviceInfo?.displayInfo?.systemName ?? "")
                        Device Orientation: \(deviceInfo?.displayInfo?.deviceOrientation ?? "")
                        device name: \(deviceInfo?.displayInfo?.deviceOrientation ?? "")
                    """
        if let callBack = settings?.callback {
            callBack("/testhandler/default1")
        }
        return nil
    }
}
