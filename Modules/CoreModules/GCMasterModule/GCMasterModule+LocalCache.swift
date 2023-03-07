//
//  GCMasterModule+LocalCache.swift
//  GCMasterModule
//
//  Created by Tri.Dang on 04/03/2023.
//

import Foundation
import GCLocalCached
import GCDataBase

extension GCMasterModule {
    var localCache: GCLocalCachedProtocol? {
        return self.resolve(by: GCLocalCachedProtocol.self)
    }
}

extension GCMasterModule: GCLocalCachedProtocol {
    public var database: GCDataBase.GCDataBaseProtocol? {
        return self.dependencyDatabase
    }
    

    
    
}
