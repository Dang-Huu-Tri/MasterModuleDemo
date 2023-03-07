//
//  GCRouterSetting.swift
//  GCBase
//
//  Created by Ben.Dang on 4/9/20.
//  Copyright © 2020 Ben.Dang. All rights reserved.
//

import Foundation

public typealias GCRouterCallback = (Any?) -> Void
/// Router item types
@objc public enum GCRouterItemType: Int {
    case root
    case push
    case present
}

@objc public protocol GCRouterItemSettingProtocol {
    @objc var type: GCRouterItemType { get }
    @objc var params: Any? { get set }
    @objc var callback: GCRouterCallback? { get set }
}

@objcMembers
public class GCRouterItemSetting: NSObject, GCRouterItemSettingProtocol {
    @objc public var type: GCRouterItemType
    @objc public var params: Any?
    @objc public var callback: GCRouterCallback?
    
    @objc public init(_ type: GCRouterItemType = .push, params: Any? = nil, callback: GCRouterCallback? = nil) {
        self.type = type
        self.params = params
        self.callback = callback
    }
}
