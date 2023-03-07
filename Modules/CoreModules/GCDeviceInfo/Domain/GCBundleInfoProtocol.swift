//
//  CGBundleInfoProtocol.swift
//  CGFingerPringtingSDK
//
//  Created by Tri.Dang on 11/01/2023.
//

import Foundation

@objc public protocol GCBundleInfoProtocol: NSObjectProtocol {
    var md5: String { get }
    var identifier: String { get }
    var appVersion: String { get }
    var buidNumber: String { get }
    var mobileProvision: String { get }
    var extensionClass: String { get }
    var isAppExtension: Bool { get }
    var receiptPath: String { get }
    var receiptType: String { get }
}
