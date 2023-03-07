//
//  GCMasterModule+Dependency.swift
//  SampleDI
//
//  Created by Tri.Dang on 27/02/2023.
//

import Foundation

fileprivate var globalRecursiveLock = NSRecursiveLock()

protocol RegisterProtocol {
    func register<T>(singleton: Bool, identifier: String, closure: @escaping () -> T)
    func register<T, V>(singleton: Bool, type: V.Type, name: String, closure: @escaping () -> T)
    func register<T, V>(singleton: Bool, type: V.Type, closure: @escaping () -> T)
    func register<T>(singleton: Bool, closure: @escaping () -> T)
    func registerObject<T>(_ objectInstance: T, for identifier: String) -> T
    func registerObject<T>(_ objectInstance: T) -> T
}

protocol ResolveProtocol {
    func resolve<T>() -> T?
    func resolve<T, V>(by type: V.Type, name: String) -> T?
    func resolve<T, V>(by type: V.Type) -> T?
    func resolve<T>(by identifier: String) -> T?
}


public protocol RegisterRemover {
    func remove(by identifier: String) -> Bool
    func removeAll()
}

extension GCMasterModule: RegisterProtocol {
    public func register<T>(singleton: Bool, identifier: String, closure: @escaping () -> T) {
        registrations[identifier] = (singleton, closure: closure)
    }
    
    public func register<T, V>(singleton: Bool, type: V.Type, closure: @escaping () -> T) {
        let identifier = String(describing: V.self)
        register(singleton: singleton, identifier: identifier, closure: closure)
    }
    
    func register<T, V>(singleton: Bool, type: V.Type, name: String, closure: @escaping () -> T) {
        var identifier = String(describing: V.self)
        identifier = "\(identifier)-\(name)"
        register(singleton: singleton, identifier: identifier, closure: closure)
    }
    
    public func register<T>(singleton: Bool, closure: @escaping () -> T) {
        register(singleton: singleton, type: T.self, closure: closure)
    }
    
    @discardableResult
    public func registerObject<T>(_ objectInstance: T) -> T {
        register(singleton: false) {
            return objectInstance
        }
        return objectInstance
    }
    
    @discardableResult
    public func registerObject<T>(_ objectInstance: T, for identifier: String) -> T {
        register(singleton: false, identifier: identifier) { objectInstance }
        return objectInstance
    }
}

extension GCMasterModule: ResolveProtocol {
    public func resolve<T>() -> T? {
        let identifier = String(describing: T.self)
        return resolve(by: identifier)
    }
    
    func resolve<T, V>(by type: V.Type, name: String) -> T? {
        var identifier = String(describing: V.self)
        identifier = "\(identifier)-\(name)"
        return resolve(by: identifier)
    }
    
    public func resolve<T, V>(by type: V.Type) -> T? {
        let identifier = String(describing: V.self)
        return resolve(by: identifier)
    }
    
    public func resolve<T>(by identifier: String) -> T? {
        guard let info = registrations[identifier] else {
            return nil
        }
        
        guard let instance = info.closure() as? T else {
            return nil
        }
        
        if info.isSingleton {
            remove(by: identifier)
            registerObject(instance, for: identifier)
        }
        return instance
    }
}

extension GCMasterModule: RegisterRemover {
    public func removeAll() {
        registrations.removeAll()
    }
    
    @discardableResult
    public func remove(by identifier: String) -> Bool {
        registrations.removeValue(forKey: identifier) != nil
    }
}
