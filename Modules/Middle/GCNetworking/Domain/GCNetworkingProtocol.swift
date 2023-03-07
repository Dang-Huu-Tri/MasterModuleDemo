//
//  GCNetworkingProtocol.swift
//  GCClient
//
//  Created by Tri.Dang on 04/03/2023.
//

import Foundation
#if canImport(GCLocalCached)
import GCLocalCached
#endif

@objc public protocol GCNetworkingProtocol: NSObjectProtocol {
    func request()
    var cache: GCLocalCachedProtocol? { get set }
}
