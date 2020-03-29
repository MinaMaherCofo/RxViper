//
//  MainRouter.swift
//  RxViper
//
//  Created by Mina on 3/14/20.
//  Copyright © 2020 Mina. All rights reserved.
//

import UIKit

class MainRouter: BaseRouter {
    func createModule() -> UIViewController {
        let view = MainViewController()
        let interactor = MainInteractor()
        let router = self
        let presenter = MainPresenter(interactor: interactor, router: router)
        
        view.presenter = presenter
        return view
    }
}
