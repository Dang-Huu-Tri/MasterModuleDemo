//
//  GCNetworking.swift
//  GCClient
//
//  Created by Tri.Dang on 04/03/2023.
//

import Foundation
#if canImport(GCLocalCached)
import GCLocalCached
#endif

class GCNetworking: NSObject, GCNetworkingProtocol {
    public var cache: GCLocalCachedProtocol?
    public override init() {}
    public func request() {
        print("Network - Request")
        cache?.request()
    }
    
    
}
