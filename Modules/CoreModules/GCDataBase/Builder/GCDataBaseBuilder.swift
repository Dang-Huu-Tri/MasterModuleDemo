//
//  GCDataBaseBuilder.swift
//  GCClient
//
//  Created by Tri.Dang on 04/03/2023.
//

import Foundation

@objcMembers
public class GCDataBaseBuilder: NSObject {
    public func build() -> GCDataBaseProtocol {
        return GCDataBase()
    }
}
