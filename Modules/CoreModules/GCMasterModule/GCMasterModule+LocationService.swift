//
//  GCMasterModule+LocationService.swift
//  GCMasterModule
//
//  Created by Tri.Dang on 01/03/2023.
//

import Foundation
#if canImport(LocationFrameWork)
import LocationFrameWork
#endif

extension GCMasterModule {
    public var locationService: LocationServices? {
        return self.resolve(by: LocationServices.self)
    }
}
