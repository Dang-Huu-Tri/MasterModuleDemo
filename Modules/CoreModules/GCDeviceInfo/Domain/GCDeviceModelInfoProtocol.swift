//
//  GCDeviceModelInfoProtocol.swift
//  CGFingerPringtingSDK
//
//  Created by Tri.Dang on 11/01/2023.
//

import Foundation

@objc public protocol GCDeviceModelInfoProtocol: NSObjectProtocol {
    var modelName: String { get }
    var machineName: String { get }
    var systemMachineName: String { get }
}
