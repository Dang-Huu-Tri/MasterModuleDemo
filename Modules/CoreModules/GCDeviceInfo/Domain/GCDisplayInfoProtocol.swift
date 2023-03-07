//
//  GCDisplayInfoProtocol.swift
//  CGFingerPringtingSDK
//
//  Created by Tri.Dang on 11/01/2023.
//

import Foundation

@objc public protocol GCDisplayInfoProtocol {
    var screenSize: CGSize { get }
    var scale: CGFloat { get }
    var brightness: CGFloat { get }
    var appearance: Int { get }
    var deviceOrientation: String { get }
    var systemName: String { get }
    var osVersion: GCOSVersionProtocol { get }
    var isJailBreak: Bool { get }
    var idfv: String { get }
}
