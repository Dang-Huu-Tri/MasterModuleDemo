//
//  GCProcessInfoProtocol.swift
//  CGFingerPringtingSDK
//
//  Created by Tri.Dang on 11/01/2023.
//

import Foundation

@objc public protocol GCProcessInfoProtocol: NSObjectProtocol {
    var processName: String { get }
    var numsOfProcessor: Int { get }
    var numsOfActiveProcessor: Int { get }
    var physicalMemory: UInt64 { get }
    var runningOnMac: Bool { get }
    var isMacCatalyst: Bool { get }
    var lowPowerModeEnabled: Bool { get }
    var userEnvironment: String { get }
    var homeEnvironment: String { get }
    var cpu: String { get }
    var gpu: String { get }
    var neuralEngine: String { get }
}
