//
//  GCProcessInfo.swift
//  CGFingerPringtingSDK
//
//  Created by Tri.Dang on 11/01/2023.
//

import Foundation
import Metal

class GCProcessInfo: NSObject {
    fileprivate var processInfo: ProcessInfo
    public init(processInfo: ProcessInfo = .processInfo) {
        self.processInfo = processInfo
    }
}

extension GCProcessInfo: GCProcessInfoProtocol {
    
    private func getModelIdentifier() -> String? {
        var size: Int = 0
        sysctlbyname("hw.machine", nil, &size, nil, 0)
        var machine = [CChar](repeating: 0, count: Int(size))
        if sysctlbyname("hw.machine", &machine, &size, nil, 0) != 0 {
            return nil
        }
        let code: String = String(cString:machine)
        return code
    }
    
    private func getMetalGpu() -> String {
        if #available(OSX 10.11, iOS 8.0, macCatalyst 13.0, *) {
            guard let device = MTLCreateSystemDefaultDevice() else {
                return "Unknown"
            }
            
            let deviceName = device.name
                .replacingOccurrences(of: "(R)", with: "")
                .replacingOccurrences(of: "(TM)", with: "")
            return deviceName
        } else {
            return "Not support Metal"
        }
    }
    
    private func getCpu() -> String? {
        guard let id = getModelIdentifier() else {
            return nil
        }
        guard let modelId = GCDeviceModelIdentifier(rawValue: id) else {
            return nil
        }
        return modelId.cpu()
    }
    
    private func getGpu() -> String? {
        if #available(OSX 10.11, iOS 8.0, macCatalyst 13.0, *) {
            return getMetalGpu()
        } else {
            guard let id = getModelIdentifier() else {
                return nil
            }
            guard let modelId = GCDeviceModelIdentifier(rawValue: id) else {
                return nil
            }
            return modelId.gpu()
        }
    }
    
    public var cpu: String {
        let cpu_ = getCpu() ?? "Unknown"
        return cpu_
    }
    
    public var gpu: String {
        if #available(OSX 10.11, iOS 8.0, macCatalyst 13.0, *) {
            return getMetalGpu()
        } else {
            guard let id = getModelIdentifier() else {
                return ""
            }
            guard let modelId = GCDeviceModelIdentifier(rawValue: id) else {
                return ""
            }
            return modelId.gpu()
        }
    }
    
    public var neuralEngine: String {
        guard let id = getModelIdentifier() else { return "" }
        guard let modelId = GCDeviceModelIdentifier(rawValue: id) else { return "" }
        return modelId.neuralEngine()
    }
    
    public var processName: String {
        return self.processInfo.processName
    }
    
    public var numsOfProcessor: Int {
        return self.processInfo.processorCount
    }
    
    public var numsOfActiveProcessor: Int {
        return self.processInfo.activeProcessorCount
    }
    
    public var physicalMemory: UInt64 {
        return self.processInfo.physicalMemory
    }
    
    public var runningOnMac: Bool {
        if #available(iOS 14.0, *) {
            return self.processInfo.isiOSAppOnMac
        }
        return false
    }
    
    public var isMacCatalyst: Bool {
        if #available(iOS 13.0, *) {
            return self.processInfo.isMacCatalystApp
        }
        return false
    }
    
    public var lowPowerModeEnabled: Bool {
        return self.processInfo.isLowPowerModeEnabled
    }
    
    public var userEnvironment: String {
        let appProcessUser = self.processInfo.environment["USER"]
        return appProcessUser.notNull()
    }
    
    public var homeEnvironment: String {
        let appProcessHome = self.processInfo.environment["HOME"]
        return appProcessHome.notNull()
    }
    
    
}
