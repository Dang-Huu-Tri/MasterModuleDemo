//
//  GCLocalCachedProtocol.swift
//  GCClient
//
//  Created by Tri.Dang on 04/03/2023.
//

import Foundation
import GCDataBase

@objc public protocol GCLocalCachedProtocol: NSObjectProtocol {
    func request()
    var database: GCDataBaseProtocol? { get }
}
