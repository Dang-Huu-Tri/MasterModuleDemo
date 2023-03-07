//
//  GCFileInfoProtocol.swift
//  CGFingerPringtingSDK
//
//  Created by Tri.Dang on 15/01/2023.
//

import Foundation

@objc public protocol GCFileInfoProtocol: NSObjectProtocol {
    var hasData: Bool { get }
    var creationDate: Date? { get }
    var modifiedDate: Date? { get }
    var size: Int64 { get }
    var fileExtensionHidden: Bool { get }
    var fileType: String? { get }
    var systemNumber: Int { get }
    var systemFreeNode: Int { get }
    var systemNodes: Int { get }
}
