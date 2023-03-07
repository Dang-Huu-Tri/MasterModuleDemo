//
//  GCMasterModule+Network.swift
//  GCMasterModule
//
//  Created by Tri.Dang on 04/03/2023.
//

import Foundation
#if canImport(GCNetworking)
import GCNetworking
#endif
#if canImport(GCLocalCached)
import GCLocalCached
#endif

extension GCMasterModule {
    var network: GCNetworkingProtocol? {
        return self.resolve(by: GCNetworkingProtocol.self)
    }
}

extension GCMasterModule: GCNetworkingProtocol {
    public func request() {
        self.network?.request()
    }
    
    public var cache: GCLocalCachedProtocol? {
        get {
            return self.network?.cache
        }
        set(newValue) {
            self.network?.cache = newValue
        }
    }
    
    
}
