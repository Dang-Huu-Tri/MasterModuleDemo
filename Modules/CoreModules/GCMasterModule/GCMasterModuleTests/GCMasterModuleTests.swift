//
//  GCMasterModuleTests.swift
//  GCMasterModuleTests
//
//  Created by Tri.Dang on 06/03/2023.
//

import XCTest
@testable import GCMasterModule
@testable import GCLocalCached
@testable import GCDataBase
@testable import GCNetworking

final class GCMasterModuleTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        GCMasterModule.shared.removeAll()
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testResolvesDifferentObjectOneachModule() throws {
        GCMasterModule.shared.register(singleton: false, type: GCDataBaseProtocol.self) {
            return GCDataBaseBuilder().build()
        }
        
        GCMasterModule.shared.register(singleton: false, type: GCLocalCachedProtocol.self) {
            let database: GCDataBaseProtocol? = GCMasterModule.shared.resolve(by: GCDataBaseProtocol.self)
            let localCached = GCLocalCacheBuilder().build(database)
            return localCached
        }
        let localCached: GCLocalCachedProtocol? = GCMasterModule.shared.resolve(by: GCLocalCachedProtocol.self)
        let database: GCDataBaseProtocol? = GCMasterModule.shared.resolve(by: GCDataBaseProtocol.self)
        XCTAssertFalse(database === localCached?.database)
    }
    
    func testResolvesSameObjectOneachModule() throws {
        GCMasterModule.shared.register(singleton: true, type: GCDataBaseProtocol.self) {
            return GCDataBaseBuilder().build()
        }
        
        GCMasterModule.shared.register(singleton: false, type: GCLocalCachedProtocol.self) {
            let database: GCDataBaseProtocol? = GCMasterModule.shared.resolve(by: GCDataBaseProtocol.self)
            let localCached = GCLocalCacheBuilder().build(database)
            return localCached
        }
        let localCached: GCLocalCachedProtocol? = GCMasterModule.shared.resolve(by: GCLocalCachedProtocol.self)
        let database: GCDataBaseProtocol? = GCMasterModule.shared.resolve(by: GCDataBaseProtocol.self)
        XCTAssertTrue(database === localCached?.database)
    }
    
    func testRegisterSingletonOneModuleWithManyIdentifierForeachModule() throws {
        GCMasterModule.shared.register(singleton: true, type: GCDataBaseProtocol.self) {
            return GCDataBaseBuilder().build()
        }
        
        GCMasterModule.shared.register(singleton: true, type: GCLocalCachedProtocol.self) {
            let database: GCDataBaseProtocol? = GCMasterModule.shared.resolve(by: GCDataBaseProtocol.self)
            let localCached = GCLocalCacheBuilder().build(database)
            return localCached
        }
        
        GCMasterModule.shared.register(singleton: true, type: GCLocalCachedProtocol.self, name: "NetWorking") {
            let database: GCDataBaseProtocol? = GCMasterModule.shared.resolve(by: GCDataBaseProtocol.self)
            let localCached = GCLocalCacheBuilder().build(database)
            return localCached
        }
        
        GCMasterModule.shared.register(singleton: false, type: GCNetworkingProtocol.self) {
            let localCached: GCLocalCachedProtocol? = GCMasterModule.shared.resolve(by: GCLocalCachedProtocol.self, name: "NetWorking")
            let networking = GCNetworkingBuilder().build(localCached)
            return networking
        }
        let localCached: GCLocalCachedProtocol? = GCMasterModule.shared.resolve(by: GCLocalCachedProtocol.self)
        let networking: GCNetworkingProtocol? = GCMasterModule.shared.resolve(by: GCNetworkingProtocol.self)
        let database: GCDataBaseProtocol? = GCMasterModule.shared.resolve(by: GCDataBaseProtocol.self)
        XCTAssertTrue(database === localCached?.database)
        XCTAssertTrue(database === networking?.cache?.database)
        XCTAssertFalse(localCached === networking?.cache)
    }
    
    func testRegisterPrimaryType() throws {
        let sampleInteger = 12
        GCMasterModule.shared.register(singleton: false, type: Int.self) {
             return sampleInteger
        }
        let resolve: Int? = GCMasterModule.shared.resolve(by: Int.self)
        XCTAssertTrue(sampleInteger == resolve)
    }
}
