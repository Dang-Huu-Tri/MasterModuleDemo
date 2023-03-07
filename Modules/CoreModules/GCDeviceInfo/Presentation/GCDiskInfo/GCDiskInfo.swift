//
//  CGDiskInfo.swift
//  CGFingerPringtingSDK
//
//  Created by Tri.Dang on 12/01/2023.
//

import Foundation


class GCDiskInfo: NSObject, GCDiskInfoProtocol {
    public private(set) var volumes: [GCVolumeInfo]
    
    public override init() {
        var mntbufp: UnsafeMutablePointer<statfs>?
        let count = getmntinfo(&mntbufp, 0)
        var cachedVolumes: [GCVolumeInfo] = []
        for i in 0..<count {
            let curIndex = Int(i)
            guard var curStatfs = mntbufp?[curIndex] else { continue }
            let mountName = withUnsafeMutablePointer(to: &curStatfs.f_mntonname) { curPointer -> String? in
                let result = curPointer.withMemoryRebound(to: CChar.self, capacity: Int(MAXPATHLEN)) { thisPointer -> String? in
                    return String(cString: thisPointer, encoding: .utf8)
                }
                return result ?? ""
            }
            let mountDirectory = withUnsafeMutablePointer(to: &curStatfs.f_mntfromname) { curPointer -> String? in
                let result = curPointer.withMemoryRebound(to: CChar.self, capacity: Int(MAXPATHLEN)) { thisPointer -> String? in
                    return String(cString: thisPointer, encoding: .utf8)
                }
                return result ?? ""
            }
            let curVolume = GCVolumeInfo(volumeName: mountName ?? "", volumeDirectory: mountDirectory ?? "")
            cachedVolumes.append(curVolume)
        }
        volumes = cachedVolumes
    }
    
    public func getMountedRootVolume(_ osVersion: GCOSVersionProtocol) -> String {
        guard volumes.isEmpty == false else { return "" }
        var rootVolume = ""
        for curVolume in volumes {
            if curVolume.volumeName == "/" {
                if osVersion.rawSystemVersion.isNotEmpty {
                    rootVolume = "\(osVersion.rawSystemVersion)_\(curVolume.volumeDirectory)"
                }
            }
        }
        return rootVolume
    }
    
}

