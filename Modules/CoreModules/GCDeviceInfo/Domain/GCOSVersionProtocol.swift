//
//  GCOSVersionProtocol.swift
//  CGFingerPringtingSDK
//
//  Created by Tri.Dang on 11/01/2023.
//

import Foundation

@objc public protocol GCOSVersionProtocol: NSObjectProtocol {
    var major: String { get }
    var minor: String { get }
    var patch: String { get }
    var rawSystemVersion: String { get }
}
