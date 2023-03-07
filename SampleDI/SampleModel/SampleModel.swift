//
//  SampleModel.swift
//  SampleDI
//
//  Created by Tri.Dang on 27/02/2023.
//

import Foundation

public class SampleDepenParam {
    var variable: String
    public init(variable: String) {
        self.variable = variable
    }
}

public class SampleModel {
    var variable: String = ""
    
    public init(dependency: SampleDepenParam) {
        self.variable = dependency.variable
    }
    
}
