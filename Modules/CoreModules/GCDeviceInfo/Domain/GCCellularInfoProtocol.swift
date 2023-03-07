//
//  GCCellularInfoProtocol.swift
//  CGFingerPringtingSDK
//
//  Created by Tri.Dang on 11/01/2023.
//

import Foundation

@objc public protocol GCCellularInfoProtocol: NSObjectProtocol {
    var allCarriers: [GCCarrierInfoProtocol] { get }
}

@objc public protocol GCCarrierInfoProtocol: NSObjectProtocol {
    var carrierNames: String { get }
    var radioAccessTechnology: String { get }
    var mobileCountryCodeNumber: String { get }
    var mobileNetworkCodeNumber: String { get }
    var isAllowVOIP: Bool { get }
}
