//
//  GCMasterModule+LocationService.swift
//  GCMasterModule
//
//  Created by Tri.Dang on 01/03/2023.
//

import Foundation
import LocationFrameWork

extension GCMasterModule {
    public var locationService: LocationServices? {
        return self.resolve(by: LocationServices.self)
    }
}
