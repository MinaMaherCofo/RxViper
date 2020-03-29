//
//  FirstRouter.swift
//  RxViper
//
//  Created by Mina on 3/14/20.
//  Copyright © 2020 Mina. All rights reserved.
//

import UIKit

class SecondRouter {
    init() {
        print("Init SecondRouter")
    }
    
    func createModule () -> SecondViewController{
        let secondViewController = SecondViewController()
        let router = self
        let interactor = SecondInteractor()
        let presenter = SecondPresenter(router: router, interactor: interactor)
        secondViewController.presenter = presenter
        
        return secondViewController
    }
    
    func goBack (navigationController: UINavigationController) {
        navigationController.popViewController(animated: true)
    }
    
    deinit {
        print("Deinit SecondRouter")
    }
}
