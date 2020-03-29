//
//  UIAlertActionExtension.swift
//  RxViper
//
//  Created by Mina on 3/14/20.
//  Copyright © 2020 Mina. All rights reserved.
//

import UIKit

extension UIAlertAction {
    static var okAction: UIAlertAction {
        return UIAlertAction(title: "ok".localized, style: .default, handler: nil)
    }
}
