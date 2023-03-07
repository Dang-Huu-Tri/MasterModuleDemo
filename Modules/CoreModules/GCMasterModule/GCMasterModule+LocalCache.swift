//
//  GCMasterModule+LocalCache.swift
//  GCMasterModule
//
//  Created by Tri.Dang on 04/03/2023.
//

import Foundation
#if canImport(GCLocalCached)
import GCLocalCached
#endif
#if canImport(GCDataBase)
import GCDataBase
#endif

extension GCMasterModule {
    var localCache: GCLocalCachedProtocol? {
        return self.resolve(by: GCLocalCachedProtocol.self)
    }
}

extension GCMasterModule: GCLocalCachedProtocol {
    public var database: GCDataBaseProtocol? {
        return self.dependencyDatabase
    }
    

    
    
}
