//
//  GCDisplayInfo.swift
//  CGFingerPringtingSDK
//
//  Created by Tri.Dang on 11/01/2023.
//

import Foundation
import UIKit

class GCDisplayInfo {
    var screen: UIScreen
    var device: UIDevice
    
    public init(screen: UIScreen = UIScreen.main, device: UIDevice = .current) {
        self.screen = screen
        self.device = device
    }
}

extension GCDisplayInfo: GCDisplayInfoProtocol {
    public var screenSize: CGSize {
        return screen.bounds.size
    }
    
    public var scale: CGFloat {
        return screen.scale
    }
    
    public var brightness: CGFloat {
        return screen.brightness
    }
    
    public var appearance: Int {
        if #available(iOS 12.0, *) {
            let userInterface = screen.traitCollection.userInterfaceStyle
            if userInterface == .dark {
                return GCAppearance.darkMode.rawValue
            } else {
                return GCAppearance.lightMode.rawValue
            }
        }
        return GCAppearance.lightMode.rawValue
    }
    
    public var deviceOrientation: String {
        switch device.orientation {
        case .portrait:
            return "Portrait"
        case .portraitUpsideDown:
            return "PortraitUpsideDown"
        case .landscapeLeft:
            return "LandscapeLeft"
        case .landscapeRight:
            return "LandscapeRight"
        case .faceUp:
            return "FaceUp"
        case .faceDown:
            return "FaceDown"
        default:
            return "Unknown"
        }
    }
    
    public var systemName: String {
        return device.systemName
    }
    
    public var osVersion: GCOSVersionProtocol {
        return GCOSVersion(device)
    }
    
    public var isJailBreak: Bool {
        var isJailBroken = false;
        let cydiaPath = "/Applications/Cydia.app"
        let aptPath = "/private/var/lib/apt/"
        if FileManager.default.fileExists(atPath: cydiaPath)
        {
            isJailBroken = true;
        }
        if FileManager.default.fileExists(atPath: aptPath)
        {
            isJailBroken = true;
        }
        var cydiaJailBroken = false
        if let url = URL.init(string:"cydia://package/com.example.package") {
            cydiaJailBroken = UIApplication.shared.canOpenURL(url)
        }
        return isJailBroken || cydiaJailBroken
    }
    
    public var idfv: String {
        return  device.identifierForVendor?.uuidString ?? ""
    }
}
