//
//  GCVirtualMemory.swift
//  CGFingerPringtingSDK
//
//  Created by Tri.Dang on 12/01/2023.
//
import Darwin
import MachO
import Foundation

class GCVirtualMemory: NSObject {
    fileprivate var vmStatistics: vm_statistics64
    public override init() {
        vmStatistics = Self.getVMStatistics64()
    }
    
    fileprivate static func getVMStatistics64() -> vm_statistics64 {
        let host_port: host_t = mach_host_self()
        var host_size: mach_msg_type_number_t = mach_msg_type_number_t(UInt32(MemoryLayout<vm_statistics64_data_t>.size / MemoryLayout<integer_t>.size))
        var returnData:vm_statistics64 = vm_statistics64.init()
        _ = withUnsafeMutablePointer(to: &returnData) {
            (p:UnsafeMutablePointer<vm_statistics64>) -> Bool in
            return p.withMemoryRebound(to: integer_t.self, capacity: Int(host_size)) {
                (pp:UnsafeMutablePointer<integer_t>) -> Bool in
                let retvalue = host_statistics64(host_port, HOST_VM_INFO64,
                                                 pp, &host_size)
                return retvalue == KERN_SUCCESS
            }
        }
        return returnData
    }
}

extension GCVirtualMemory: GCVirtualMemoryProtocol {
    public var freeBytes: Int64 {
        return Int64(vmStatistics.free_count) * self.pageSizeInBytes
    }
    
    public var activeBytes: Int64 {
        return Int64(vmStatistics.active_count) * self.pageSizeInBytes
    }
    
    public var inactiveBytes: Int64 {
        return Int64(vmStatistics.inactive_count) * self.pageSizeInBytes
    }
    
    public var wireBytes: Int64 {
        return Int64(vmStatistics.wire_count) * self.pageSizeInBytes
    }
    
    public var purgeableBytes: Int64 {
        return Int64(vmStatistics.purgeable_count) * self.pageSizeInBytes
    }
    
    public var speculativeBytes: Int64 {
        return Int64(vmStatistics.speculative_count) * self.pageSizeInBytes
    }
    
    public var throttledBytes: Int64 {
        return Int64(vmStatistics.throttled_count) * self.pageSizeInBytes
    }
    
    public var externalBytes: Int64 {
        return Int64(vmStatistics.external_page_count) * self.pageSizeInBytes
    }
    
    public var internalBytes: Int64 {
        return Int64(vmStatistics.internal_page_count) * self.pageSizeInBytes
    }
    
    fileprivate var pageSizeInBytes: Int64 {
        let host_port: host_t = mach_host_self()
        var pagesize: vm_size_t = 0
        host_page_size(host_port, &pagesize)
        return Int64(pagesize)
    }
}
