//
//  GCRouterItem.swift
//  SampleDI
//
//  Created by Tri.Dang on 27/02/2023.
//

import Foundation
import UIKit

@objc public enum GCRouterItemPriority: Int {
    case low, medium, high
}

@objc public enum GCRouterItemMatchType: Int {
    case matches
    case matchesCaseInsensitive
    case prefix
    case prefixCaseInsensitive
    case suffix
    case suffixCaseInsensitive
    case regexp
}

public class GCRouterItem {
    public var module: String
    public var url: String
    public var handlerClass: AnyClass?
    public let handlerBlock: ((_ urlString: String, _ settings: GCRouterItemSettingProtocol?) -> UIViewController?)?
    public var priority: GCRouterItemPriority
    public let matchType: GCRouterItemMatchType
    
    public init(module: String,
                url: String,
                handlerClass: AnyClass? = nil,
                handlerBlock: ( (_: String, _: GCRouterItemSettingProtocol?) -> UIViewController?)? = nil,
                priority: GCRouterItemPriority = .medium,
                matchType: GCRouterItemMatchType = .prefix) {
        self.module = module
        self.url = url
        self.handlerClass = handlerClass
        self.handlerBlock = handlerBlock
        self.priority = priority
        self.matchType = matchType
    }
    
    public func ableToHandle(_ urlString: String) -> Bool {
        if matchType == .matches {
            return urlString == url
        }
        else if matchType == .matchesCaseInsensitive {
            return urlString.lowercased() == url.lowercased()
        }
        else if matchType == .prefix {
            return urlString.hasPrefix(url)
        }
        else if matchType == .prefixCaseInsensitive {
            return urlString.lowercased().hasPrefix(url.lowercased())
        }
        else if matchType == .suffix {
            return urlString.hasSuffix(url)
        }
        else if matchType == .suffixCaseInsensitive {
            return urlString.lowercased().hasSuffix(url.lowercased())
        }
        
        return GCRouterItem.checkRegexp(urlString, pattern: url)
    }
    
    public func getListRegexpMatches(in urlString: String) -> [String]? {
        guard self.matchType == .regexp else { return nil }
        return GCRouterItem.getListRegexpMatches(in: urlString, pattern: self.url)
    }
    
    public static func getListRegexpMatches(in urlString: String, pattern: String) -> [String]? {
        guard let regexp = try? NSRegularExpression(pattern: pattern),
              let result = regexp.firstMatch(in: urlString, options: [], range: NSRange(location: 0, length: urlString.count)), result.numberOfRanges > 0 else { return nil }
        
        var matches: [String] = []
        for i in 0 ..< result.numberOfRanges {
            if let range = Range(result.range(at: i), in: urlString) {
                matches.append(String(urlString[range]))
            }
        }
        
        return matches
    }
    
    public static func checkRegexp(_ urlString: String, pattern: String) -> Bool {
        do {
            let regexp = try NSRegularExpression(pattern: pattern)
            let matches = regexp.numberOfMatches(in: urlString, options: [], range: NSRange(location: 0, length: urlString.count)) > 0
            return matches
        }
        catch { }
        
        return false
    }
}
