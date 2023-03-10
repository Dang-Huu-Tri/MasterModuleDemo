//
//  GCLocalCacheBuilder.swift
//  GCClient
//
//  Created by Tri.Dang on 04/03/2023.
//

import Foundation
import GCDataBase

@objcMembers
public class GCLocalCacheBuilder: NSObject {
    public func build(_ database: GCDataBaseProtocol?) -> GCLocalCachedProtocol {
        let cacher = GCLocalCached()
        cacher.database = database
        return cacher
    }
}
