//
//  UIViewControllerExtension.swift
//  RxViper
//
//  Created by Mina on 3/14/20.
//  Copyright © 2020 Mina. All rights reserved.
//

import UIKit

extension UIViewController {
    func showLoadingView () {
        // TODO:- 1) to be implemented
    }
    
    func hideLoadingView () {
        // TODO:- 2) to be implemented
    }
    
    func showAlert (title: String = "Viper",
                    message: String,
                    actions: [UIAlertAction]? = nil,
                    completion: (() -> Void)? = nil) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        if let actions = actions {
            actions.forEach {alert.addAction($0)}
        } else {
            alert.addAction(UIAlertAction.okAction)
        }
        
        self.present(alert, animated: true, completion: completion)
    }
}
