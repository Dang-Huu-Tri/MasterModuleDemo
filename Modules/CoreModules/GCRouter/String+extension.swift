//
//  String+extension.swift
//  LocationFrameWork
//
//  Created by Tri.Dang on 27/02/2023.
//

import Foundation

extension String {
    public func encodeWithXorByte(key: UInt8) -> String {
        let xorBytes = Data(bytes:self.utf8.map{$0 ^ key})
        return xorBytes.base64EncodedString(options: [])
    }
}
