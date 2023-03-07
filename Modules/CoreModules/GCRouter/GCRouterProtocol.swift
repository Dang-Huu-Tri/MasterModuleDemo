//
//  GCRouterProtocol.swift
//  GCBase
//
//  Created by Ben.Dang on 4/9/20.
//  Copyright © 2020 Ben.Dang. All rights reserved.
//

import Foundation
import UIKit

@objc public protocol GCRouterProtocol: GCRouterRegisterProtocol, GCRouterHandlerProtocol { }

@objc public protocol GCRouterRegisterProtocol {
    static func registerRouterItems()
}

@objc public protocol GCRouterHandlerProtocol {
    static func handleURL(urlString: String, settings: GCRouterItemSettingProtocol?) -> UIViewController?
}
