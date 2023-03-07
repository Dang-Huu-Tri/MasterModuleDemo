//
//  GCDataBase.swift
//  GCClient
//
//  Created by Tri.Dang on 04/03/2023.
//

import Foundation

@objcMembers
class GCDataBase: NSObject, GCDataBaseProtocol {
    public override init() { }
    public func request() {
        print("Database - Request")
    }
}
