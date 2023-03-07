//
//  AppDelegate.swift
//  SampleDI
//
//  Created by Tri.Dang on 26/02/2023.
//

import UIKit
import GCRouter

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        autoRegisterRouterModule()
        return true
    }

    // MARK: UISceneSession Lifecycle

    @available(iOS 13.0, *)
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    @available(iOS 13.0, *)
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}


extension AppDelegate {
    
    func autoRegisterRouterModule() {
        let allRouterRegisterClass = classesConformProtocol(GCRouterRegisterProtocol.self)
        allRouterRegisterClass.forEach { curRegisterClass in
            curRegisterClass.registerRouterItems()
        }
    }
    
    func classesConformProtocol(_ objcProtocol: Protocol) -> [AnyClass] {
        let expectedClassCount = objc_getClassList(nil, 0)
        let allClasses = UnsafeMutablePointer<AnyClass>.allocate(capacity: Int(expectedClassCount))
        let autoreleasingAllClasses = AutoreleasingUnsafeMutablePointer<AnyClass>(allClasses)
        let actualClassCount: Int32 = objc_getClassList(autoreleasingAllClasses, expectedClassCount)
        
        var classes: [AnyClass] = []
        for i in 0 ..< actualClassCount {
            let currentClass: AnyClass = allClasses[Int(i)]
            if class_conformsToProtocol(currentClass, objcProtocol) {
                classes.append(currentClass)
            }
        }
        
        return classes
    }
}
