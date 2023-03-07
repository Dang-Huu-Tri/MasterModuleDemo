//
//  CustomRouterHandler.swift
//  SampleDI
//
//  Created by Tri.Dang on 01/03/2023.
//

import Foundation
import UIKit
import GCRouter

class CustomRouterHandler: GCRouterProtocol {
    static func registerRouterItems() {
        GCRouter.register(items: [
            GCRouterItem(module: "testHandler", url: GCRouterName.sample.rawValue, handlerClass: CustomRouterHandler.self)
        ])
    }
    
    static func handleURL(urlString: String, settings: GCRouterItemSettingProtocol?) -> UIViewController? {
        if urlString.hasPrefix("/testhandler") {
            print("Test Handle")
            let params = settings?.params as? [String]
            let callBack = settings?.callback
            print("\(params ?? [])")
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2) {
                guard let callBack = callBack else { return }
                callBack("success")
            }
        }
        return nil
    }
    
    
}
