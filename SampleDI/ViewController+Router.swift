//
//  ViewController+Router.swift
//  SampleDI
//
//  Created by Tri.Dang on 01/03/2023.
//

import Foundation
import UIKit
//import LocationFrameWork
//import GCRouter
import CoreLocation

extension ViewController {
    
    @IBAction func openSetting(_ sender: Any) {
        let urlStringFromTextField = self.urlTextField.text ?? ""
        switch urlStringFromTextField {
        case GCRouterName.sample.rawValue:
            GCRouter.open(GCRouterName.sample.rawValue,
                          settings: GCRouterItemSetting(.present, params: ["Xuan", "Ha", "Thu", "Dong"], callback: { result in
                guard let resultString = result as? String else { return }
                print("this is result \(resultString)")
                self.showAlertController(title: "Info", message: "default Response \(resultString)", cancelButtonTitle: "OK")
            }))
        case GCRouterName.locationFramework.rawValue:
            openLocationFrameWork()
        case GCRouterName.deviceInfo.rawValue:
            openDeviceInfoFromApp()
        case GCRouterName.deviceInfoRegex1.rawValue:
            self.openDeviceInfoRegex1()
        case GCRouterName.deviceInfoRegex2.rawValue:
            self.openDeviceInfoRegex2()
        default:
            break
        }
    }
    
    func setupRouter() {
        CustomRouterHandler.registerRouterItems()
        LocationServicesRouterHandler.registerRouterItems()
    }
}

extension ViewController {
    func openLocationFrameWork() {
        GCRouter.open(GCRouterName.locationFramework.rawValue,
                      settings: GCRouterItemSetting(.present, params: [0, 1, 2], callback: { [weak self] result in
            guard let resultCoordinate = result as? CLLocationCoordinate2D, let self = self else { return }
            self.showAlertController(title: "Info", message: "Location Response \(resultCoordinate)", cancelButtonTitle: "OK")
        }))
    }
    
    func openDeviceInfoRegex1() {
        GCRouter.open(GCRouterName.deviceInfoRegex1.rawValue,
                      settings: GCRouterItemSetting(.present, params: nil, callback: { [weak self] result in
            guard let resultString = result as? String, let self = self else { return }
            self.showAlertController(title: "Info", message: "Device Info Collect Regex1\(resultString)", cancelButtonTitle: "OK")
        }))
    }
    
    func openDeviceInfoRegex2() {
        GCRouter.open(GCRouterName.deviceInfoRegex2.rawValue,
                      settings: GCRouterItemSetting(.present, params: nil, callback: { [weak self] result in
            guard let resultString = result as? String, let self = self else { return }
            GCRouter.open(GCRouterName.sample.rawValue,
                          settings: GCRouterItemSetting(.present, params: ["Xuan", "Ha", "Thu", "Dong"], callback: { result in
                guard let resultString = result as? String else { return }
                print("this is result \(resultString)")
                self.showAlertController(title: "Info", message: "default Response \(resultString)", cancelButtonTitle: "OK")
            }))
//            self.showAlertController(title: "Info", message: "Device Info Collect Regex2\(resultString)", cancelButtonTitle: "OK")
        }))
    }
    
    func openDeviceInfoFromApp() {
        GCRouter.open(GCRouterName.deviceInfo.rawValue,
                      settings: GCRouterItemSetting(.present, params: nil, callback: { [weak self] result in
            guard let resultString = result as? String, let self = self else { return }
            self.showAlertController(title: "Info", message: "Device Info Collect \(resultString)", cancelButtonTitle: "OK")
        }))
    }
}
