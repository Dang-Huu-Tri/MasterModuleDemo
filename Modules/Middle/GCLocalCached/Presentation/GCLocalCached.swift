//
//  GCLocalCached.swift
//  GCClient
//
//  Created by Tri.Dang on 04/03/2023.
//

import Foundation
#if canImport(GCDataBase)
import GCDataBase
#endif

@objcMembers
class GCLocalCached: NSObject, GCLocalCachedProtocol {
    public override init() {}
    public func request() {
        print("Cache - Request")
        database?.request()
    }
    
    public var database: GCDataBaseProtocol?
}
