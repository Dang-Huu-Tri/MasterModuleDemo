//
//  GCNetworkingBuilder.swift
//  GCClient
//
//  Created by Tri.Dang on 04/03/2023.
//

import Foundation
#if canImport(GCLocalCached)
import GCLocalCached
#endif

@objcMembers
public class GCNetworkingBuilder: NSObject {
    public func build(_ cached: GCLocalCachedProtocol?) -> GCNetworkingProtocol {
        let networking = GCNetworking()
        networking.cache = cached
        return networking
    }
}
