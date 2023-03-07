//
//  InjectDependencyHelper.swift
//  SampleDI
//
//  Created by Tri.Dang on 27/02/2023.
//

import Foundation

typealias RegistrationClosure = () -> Any
typealias RegistrationInfo = (isSingleton: Bool, closure: RegistrationClosure)

public protocol GCMasterModuleRegister {
    static func registerModule()
}

@objc public final class GCMasterModule: NSObject {
    var registrations: [String : RegistrationInfo] = [:]
    public static let shared = GCMasterModule()
    private override init() { }
}


