//
//  FirstRouter.swift
//  RxViper
//
//  Created by Mina on 3/14/20.
//  Copyright © 2020 Mina. All rights reserved.
//

import UIKit
import RxSwift

class FirstRouter {
    init() {
        print("init first router")
    }
    
    func createModule () -> UINavigationController {
        let view = FirstViewController()
        let interactor = FirstInteractor()
        let presenter = FirstPresenter(router: self, interactor: interactor)
        
        view.presenter = presenter
        
        return UINavigationController(rootViewController: view)
    }
    
    func goToSecond (navigationController: UINavigationController) {
        let secondViewController = SecondRouter().createModule()
        navigationController.pushViewController(secondViewController, animated: true)
    }
    
    deinit {
        print("deinit first router")
    }
}
