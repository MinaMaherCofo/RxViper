//
//  FirstPresenter.swift
//  RxViper
//
//  Created by Mina on 3/14/20.
//  Copyright © 2020 Mina. All rights reserved.
//

import UIKit

class FirstPresenter {
    var router: FirstRouter
    var interactor: FirstInteractor
    
    init(router: FirstRouter, interactor: FirstInteractor) {
        self.router = router
        self.interactor = interactor
        print("Init First Presenter")
    }
    
    func goToSecond (navigationController: UINavigationController) {
        router.goToSecond(navigationController: navigationController)
    }
    
    deinit {
        print("De init First Presenter")
    }
}
