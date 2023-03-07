//
//  CGBundleInfo.swift
//  CGFingerPringtingSDK
//
//  Created by Tri.Dang on 10/01/2023.
//

import Foundation

class GCBundleInfo: NSObject {
    fileprivate var bundle: Bundle
    public init(bundle: Bundle) {
        self.bundle = bundle
    }
}

extension GCBundleInfo: GCBundleInfoProtocol {
    public var md5: String {
        let data = NSData(contentsOfFile: mobileProvision)
        let md5String = data?.md5 as? String
        return md5String ?? ""
    }
    
    public var appVersion: String {
        guard let appVersion = bundle.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String else { return "" }
        return appVersion
    }
    
    public var identifier: String {
        return bundle.bundleIdentifier ?? ""
    }
    
    public var buidNumber: String {
        guard let buildNumber = bundle.object(forInfoDictionaryKey: "CFBundleVersion") as? String else { return "" }
        return buildNumber
    }
    
    public var mobileProvision: String {
        let path = bundle.bundlePath as NSString
        return path.appendingPathComponent("embedded.mobileprovision")
    }
    
    public var extensionClass: String {
        guard let extensionDict = bundle.object(forInfoDictionaryKey: "NSExtension"), let _ = extensionDict as? [AnyHashable : AnyHashable] else { return "" }
        guard let typeValue = bundle.object(forInfoDictionaryKey: "NSExtensionPrincipalClass"), let type = typeValue as? String else { return ""}
        return type
    }
    
    public var isAppExtension: Bool {
        guard let extensionDict = bundle.object(forInfoDictionaryKey: "NSExtension"), let _ = extensionDict as? [AnyHashable : AnyHashable] else { return false }
        guard let typeValue = bundle.object(forInfoDictionaryKey: "NSExtensionPointIdentifier"), let _ = typeValue as? String else { return false }
        return true
    }
    
    public var receiptPath: String {
        let receiptPath = bundle.appStoreReceiptURL?.path ?? ""
        return receiptPath
    }
    
    public var receiptType: String {
        guard receiptPath.isNotEmpty else { return "" }
        if receiptPath.contains("CoreSimulator") || receiptPath.contains("XCTestDevices") {
            return ReceiptType.simulator.rawValue
        }
        if receiptPath.hasSuffix("/sandboxReceipt") {
            return ReceiptType.sandbox.rawValue
        }
        return ReceiptType.appstore.rawValue
    }
}
