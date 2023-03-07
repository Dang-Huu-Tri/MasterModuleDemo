//
//  Optional+Extension.swift
//  CGFingerPringtingSDK
//
//  Created by Tri.Dang on 11/01/2023.
//

import Foundation

public extension Swift.Optional where Wrapped == String {
    func notNull() -> String {
        return self ?? ""
    }
}

public extension Swift.Optional where Wrapped == Int {
    
    func stringValue() -> String {
        return NSNumber(value: self ?? 0).stringValue
    }
    
}

public extension Swift.Optional where Wrapped == Double {
    
    func stringValue() -> String {
        return NSNumber(value: self ?? 0).stringValue
    }
    
    func notNull() -> Double {
        return self ?? 0
    }
}

public extension Swift.Optional where Wrapped == Float {
    
    func stringValue() -> String {
        return NSNumber(value: self ?? 0).stringValue
    }
    
    func notNull() -> Float {
        return self ?? 0
    }
}
