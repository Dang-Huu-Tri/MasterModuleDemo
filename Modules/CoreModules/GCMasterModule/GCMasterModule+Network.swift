//
//  GCMasterModule+Network.swift
//  GCMasterModule
//
//  Created by Tri.Dang on 04/03/2023.
//

import Foundation
import GCNetworking
import GCLocalCached

extension GCMasterModule {
    var network: GCNetworkingProtocol? {
        return self.resolve(by: GCNetworkingProtocol.self)
    }
}

extension GCMasterModule: GCNetworkingProtocol {
    public func request() {
        self.network?.request()
    }
    
    public var cache: GCLocalCached.GCLocalCachedProtocol? {
        get {
            return self.network?.cache
        }
        set(newValue) {
            self.network?.cache = newValue
        }
    }
    
    
}
