//
//  GCLocalizeInfoProtocol.swift
//  CGFingerPringtingSDK
//
//  Created by Tri.Dang on 11/01/2023.
//

import Foundation

@objc public protocol GCLocalizationInfoProtocol: NSObjectProtocol {
    var countryCode: String { get }
    var languageCode: String { get }
    var usesMetricSystem: Bool { get }
    var preferLanguages: [String] { get }
    var calendarIdentifier: String { get }
}
