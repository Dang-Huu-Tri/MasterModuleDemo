//
//  UIViewController+Alert.swift
//  SampleDI
//
//  Created by Tri.Dang on 01/03/2023.
//

import Foundation
import UIKit

public extension UIViewController {
    func showAlertController(title: String, message: String, cancelButtonTitle:String) {
        let alertVC = UIAlertController(title: title.isNotEmpty ? title : nil, message: message.isNotEmpty ? message : nil, preferredStyle: .alert)
        alertVC.addAction(UIAlertAction(title: cancelButtonTitle, style: .cancel, handler: {_ in
        }))
        self.present(alertVC, animated: true, completion: nil)
    }
}
