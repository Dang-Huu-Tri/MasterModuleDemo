//
//  GCFileInfo.swift
//  CGFingerPringtingSDK
//
//  Created by Tri.Dang on 15/01/2023.
//

import Foundation

@objcMembers
public class GCFileInfo: NSObject {
    fileprivate var path: String
    fileprivate var fileManager: FileManager
    fileprivate var allValues: [FileAttributeKey: Any]
    
    public init(path: String, fileManager: FileManager = .default) {
        self.path = path
        self.fileManager = fileManager
        let infoDict = try? fileManager.attributesOfItem(atPath: path)
        allValues = infoDict ?? [:]
    }
}

extension GCFileInfo: GCFileInfoProtocol {
    public var hasData: Bool {
        return !allValues.isEmpty 
    }
    public var systemFreeNode: Int {
        let freeNodes = allValues[.systemFreeNodes] as? Int
        return freeNodes ?? 0
    }
    
    public var systemNodes: Int {
        let systemNodes = allValues[.systemNodes] as? Int
        return systemNodes ?? 0
    }
    
    public var creationDate: Date? {
        return allValues[.creationDate] as? Date
    }
    
    public var modifiedDate: Date? {
        return allValues[.modificationDate] as? Date
    }
    
    public var size: Int64 {
        let curSize = allValues[FileAttributeKey.size] as? Int64
        return curSize ?? 0
    }
    
    public var systemNumber: Int {
        let systemNumber = allValues[FileAttributeKey.systemFileNumber] as? Int
        return systemNumber ?? 0
    }
    
    public var fileExtensionHidden: Bool {
        let isFileExtensionHidden = allValues[FileAttributeKey.extensionHidden] as? Bool
        return isFileExtensionHidden ?? false
    }
    
    public var fileType: String? {
        return allValues[FileAttributeKey.type] as? String
    }
    
}
