//
//  GCMasterModule+SetupModule.swift
//  GCClient
//
//  Created by Tri.Dang on 04/03/2023.
//

import Foundation
import GCDeviceInfo
import LocationFrameWork
import GCDataBase
import GCLocalCached
import GCNetworking

public extension GCMasterModule {
    func defaultSetupAllModule() {
        //Register Device Info
        self.register(singleton: false, type: GCDeviceInfoProtocol.self) {
            return GCDeviceInfoBuilder().deviceInfo
        }
        
        //register Location service
        self.register(singleton: true, type: LocationServices.self) {
            return LocationServices.sharedInstance
        }
        //register GCDatabase module
        self.register(singleton: true, type: GCDataBaseProtocol.self) {
            return GCDataBaseBuilder().build()
        }
        //register LocalCache module
        self.register(singleton: true, type: GCLocalCachedProtocol.self) { [weak self] in
            let gcdataBase: GCDataBaseProtocol? = self?.resolve(by: GCDataBaseProtocol.self)
            return GCLocalCacheBuilder().build(gcdataBase)
        }
        //register Networking Module
        self.register(singleton: false, type: GCNetworkingProtocol.self) { [weak self] in
            let gclocalCache: GCLocalCachedProtocol? = self?.resolve(by: GCLocalCachedProtocol.self)
            return GCNetworkingBuilder().build(gclocalCache)
        }
    }
}
