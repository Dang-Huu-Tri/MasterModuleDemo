//
//  GCCellularInfo.swift
//  CGFingerPringtingSDK
//
//  Created by Tri.Dang on 11/01/2023.
//

import Foundation
import UIKit
import CoreTelephony

@objcMembers
class GCCellularInfo: NSObject {
    fileprivate let networkInfo: CTTelephonyNetworkInfo
    public init(networkInfo: CTTelephonyNetworkInfo = CTTelephonyNetworkInfo()) {
        self.networkInfo = networkInfo
    }
}

extension GCCellularInfo: GCCellularInfoProtocol {
    public var allCarriers: [GCCarrierInfoProtocol] {
        if #available(iOS 12.0.0, *) {
            let result = getAllCurrentCarrier()
            return result ?? []
        } else {
            if let carrierInfo = getCurrentCarrier() {
                return [carrierInfo]
            }
        }
        return []
    }
    
    fileprivate func getAllCurrentCarrier() -> [GCCarrierInfoProtocol]? {
        guard #available(iOS 12.0, *) else { return nil }
        var result: [GCCarrierInfo] = []
        var dataServiceIndentifier = ""
        if #available(iOS 13.0, *) {
            dataServiceIndentifier = networkInfo.dataServiceIdentifier.notNull()
        }
        let radioAccessDict = networkInfo.serviceCurrentRadioAccessTechnology ?? [:]
        let cellularProviders = networkInfo.serviceSubscriberCellularProviders ?? [:]
        var carrierForDataServiceAdded = false
        if dataServiceIndentifier.isNotEmpty {
            let radioTechnology = radioAccessDict[dataServiceIndentifier]
            if let curCarrier = cellularProviders[dataServiceIndentifier] {
                let curCarrierInfo = GCCarrierInfo(carrier: curCarrier,
                                                   radioAccessTechnology: radioTechnology.notNull())
                carrierForDataServiceAdded = true
                result.append(curCarrierInfo)
            }
        }
        
        for (key, curCarrier) in cellularProviders {
            if key == dataServiceIndentifier && carrierForDataServiceAdded { continue }
            let radioTechnology = radioAccessDict[key]
            let curCarrierInfo = GCCarrierInfo(carrier: curCarrier,
                                               radioAccessTechnology: radioTechnology.notNull())
            result.append(curCarrierInfo)
        }
        return result
    }
    
    fileprivate func getCurrentCarrier() -> GCCarrierInfoProtocol? {
        guard let carrier = networkInfo.subscriberCellularProvider else { return nil }
        let carrierInfo = GCCarrierInfo(carrier: carrier, radioAccessTechnology: networkInfo.currentRadioAccessTechnology ?? "")
        return carrierInfo
    }
}
