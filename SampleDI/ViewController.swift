//
//  ViewController.swift
//  SampleDI
//
//  Created by Tri.Dang on 26/02/2023.
//

import Foundation
import UIKit

public enum GCRouterName: String {
    case sample = "/testhandler/default1"
    case locationFramework = "/location/startupdating"
    case deviceInfo = "/deviceInfo/collecting"
    case deviceInfoRegex1 = "http://geocomply.vn/collect/deviceInfo"
    case deviceInfoRegex2 = "https://geocomply.atlassian/collect/deviceInfo"
}

class ViewController: UIViewController {

    @IBOutlet weak var urlTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupMasterModule()
//        setupRouter()
    }
    
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
}


