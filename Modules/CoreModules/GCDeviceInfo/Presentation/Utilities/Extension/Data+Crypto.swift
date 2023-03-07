//
//  Data+Encrypt.swift
//  CGFingerPringtingSDK
//
//  Created by Tri.Dang on 11/01/2023.
//

import Foundation
import CommonCrypto

public extension NSData {
    var md5: NSString {
        let digestLength = Int(CC_MD5_DIGEST_LENGTH)
        let md5Buffer = UnsafeMutablePointer<CUnsignedChar>.allocate(capacity: digestLength)

        CC_MD5(bytes, CC_LONG(length), md5Buffer)
        let output = NSMutableString(capacity: Int(CC_MD5_DIGEST_LENGTH * 2))
        for i in 0..<digestLength {
            output.appendFormat("%02x", md5Buffer[i])
        }
        md5Buffer.deallocate()
        return NSString(format: output)
    }
}

extension Data {
    var md5: String {
        return (self as NSData).md5 as String
    }
}
