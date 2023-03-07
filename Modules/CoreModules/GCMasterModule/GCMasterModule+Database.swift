//
//  GCMasterModule+Database.swift
//  GCMasterModule
//
//  Created by Tri.Dang on 04/03/2023.
//

import Foundation
#if canImport(GCDataBase)
import GCDataBase
#endif

extension GCMasterModule {
    var dependencyDatabase: GCDataBaseProtocol? {
        return self.resolve(by: GCDataBaseProtocol.self)
    }
}

extension GCMasterModule: GCDataBaseProtocol {
    // Lỗi do đã có hàm tương tự.
}
