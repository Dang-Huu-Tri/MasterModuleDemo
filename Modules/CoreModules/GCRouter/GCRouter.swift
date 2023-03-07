//
//  GCRouter.swift
//  GCBase
//
//  Created by Ben.Dang on 4/9/20.
//  Copyright © 2020 Ben.Dang. All rights reserved.
//

import Foundation
import UIKit

@objcMembers
public class GCRouter: NSObject {
    private static var routerItems: [GCRouterItem] = []
    
    public class func register(module: String, mapping: [String: AnyClass]) {
        mapping.forEach { (url, handlerClass) in
            let routerItem = GCRouterItem(module: module, url: url, handlerClass: handlerClass)
            routerItems.append(routerItem)
        }
    }
    
    public class func register(items: [GCRouterItem], fileID: String = #fileID) {
        let comp = fileID.components(separatedBy: "/")
        let module = comp.count > 1 ? comp[0] : ""
        items.forEach { item in
            if !module.isEmpty {
                item.module = module
            }
            register(item: item)
        }
        routerItems.sort { (lhs, rhs) -> Bool in
            if lhs.priority.rawValue > rhs.priority.rawValue {
                return true
            }
            if lhs.priority.rawValue < rhs.priority.rawValue {
                return false
            }
            return lhs.matchType.rawValue < rhs.matchType.rawValue
        }
    }
    
    private class func register(item: GCRouterItem) {
        routerItems.append(item)
    }
    
    @objc public class func open(_ urlString: String, settings: GCRouterItemSettingProtocol?) {
        guard let vc = handlerLink(urlString, settings: settings) else { return }
//        if settings?.type == .root {
//            GCRouterUtilities.setRoot(viewController: vc)
//        } else if settings?.type == .present {
//            vc.modalPresentationStyle = .fullScreen
//            GCRouterUtilities.present(viewController: vc)
//        } else {
//            GCRouterUtilities.push(viewController: vc)
//        }
    }
    
    public class func handlerLink(_ urlString: String, settings: GCRouterItemSettingProtocol? = nil) -> UIViewController? {
        for routerItem in routerItems {
            guard routerItem.ableToHandle(urlString) else { continue }
            if let curClassHandler = routerItem.handlerClass as? GCRouterProtocol.Type {
                return curClassHandler.handleURL(urlString: urlString, settings: settings)
            } else if let blockHandler = routerItem.handlerBlock {
                return blockHandler(urlString, settings)
            }
        }
        return nil
    }
    
    public class func backToRoot(animated: Bool = false, completion: GCRouterUtilities.VoidCallback? = nil) {
        GCRouterUtilities.backToRoot(animated: animated, completion: completion)
    }
}
