//
//  GCNetworkingProtocol.swift
//  GCClient
//
//  Created by Tri.Dang on 04/03/2023.
//

import Foundation
import GCLocalCached

@objc public protocol GCNetworkingProtocol: NSObjectProtocol {
    func request()
    var cache: GCLocalCachedProtocol? { get set }
}
