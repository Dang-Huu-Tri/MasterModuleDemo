//
//  LocationServices+Router.swift
//  LocationFrameWork
//
//  Created by Tri.Dang on 27/02/2023.
//

import Foundation
import UIKit
import GCRouter

public class LocationServicesRouterHandler: GCRouterProtocol {
    public static func registerRouterItems() {
        GCRouter.register(items: [
            GCRouterItem(module: "LocationServices", url: "/location/startupdating", handlerBlock: locationServiceBlock)
        ])
    }
    
    private static var locationServiceBlock: (String, GCRouterItemSettingProtocol?) -> UIViewController? = { urlString, settings in
        LocationServices.sharedInstance.callBack = settings?.callback
        LocationServices.sharedInstance.startLocationServices()
        return nil
    }
    
    public static func handleURL(urlString: String, settings: GCRouterItemSettingProtocol?) -> UIViewController? {
        if urlString.hasPrefix("/location/startupdating") {
            LocationServices.sharedInstance.callBack = settings?.callback
            LocationServices.sharedInstance.startLocationServices()
        }
        return nil
    }
}

