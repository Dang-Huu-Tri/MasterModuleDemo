//
//  GCLocalCachedProtocol.swift
//  GCClient
//
//  Created by Tri.Dang on 04/03/2023.
//

import Foundation
#if canImport(GCDataBase)
import GCDataBase
#endif

@objc public protocol GCLocalCachedProtocol: NSObjectProtocol {
    func request()
    var database: GCDataBaseProtocol? { get }
}
