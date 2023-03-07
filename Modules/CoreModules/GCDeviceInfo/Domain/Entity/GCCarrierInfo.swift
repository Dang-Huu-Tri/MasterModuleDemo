//
//  CGCarrierInfo.swift
//  CGFingerPringtingSDK
//
//  Created by Tri.Dang on 11/01/2023.
//

import Foundation
import CoreTelephony

public class GCCarrierInfo: NSObject {
    
    var carrier: CTCarrier
    public private(set) var radioAccessTechnology: String
    
    init(carrier: CTCarrier, radioAccessTechnology: String = "") {
        self.carrier = carrier
        self.radioAccessTechnology = radioAccessTechnology
    }
}

extension GCCarrierInfo: GCCarrierInfoProtocol {
    public var carrierNames: String {
        return carrier.carrierName ?? ""
    }
    
    public var mobileCountryCodeNumber: String {
        return carrier.mobileCountryCode ?? ""
    }
    
    public var mobileNetworkCodeNumber: String {
        return carrier.mobileNetworkCode ?? ""
    }
    
    public var isAllowVOIP: Bool {
        return carrier.allowsVOIP
    }
    
    
}
