//
//  GCLocalizationInfo.swift
//  CGFingerPringtingSDK
//
//  Created by Tri.Dang on 11/01/2023.
//

import Foundation

class GCLocalizationInfo: NSObject {
    fileprivate var locale: Locale
    public init(locale: Locale = .current) {
        self.locale = locale
    }
}

extension GCLocalizationInfo: GCLocalizationInfoProtocol {
    public var countryCode: String {
        let curLocale = locale as NSLocale
        let countryCode = curLocale.countryCode
        return countryCode.notNull()
    }
    
    public var languageCode: String {
        let curLocale = locale as NSLocale
        return curLocale.languageCode
    }
    
    public var usesMetricSystem: Bool {
        let curLocale = locale as NSLocale
        return curLocale.usesMetricSystem
    }
    
    public var preferLanguages: [String] {
        return NSLocale.preferredLanguages
    }
    
    public var calendarIdentifier: String {
        let curLocale = locale as NSLocale
        return curLocale.calendarIdentifier
    }
    
    
}
