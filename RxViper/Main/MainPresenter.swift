//
//  MainPresenter.swift
//  RxViper
//
//  Created by Mina on 3/14/20.
//  Copyright © 2020 Mina. All rights reserved.
//

import UIKit
import RxSwift

class MainPresenter: BasePresenter {
    var interactor: MainInteractor
    var router: MainRouter
    
    
    init(interactor: MainInteractor, router: MainRouter) {
        self.interactor = interactor
        self.router = router
    }
    
    func getTodos () -> PublishSubject<[Todo]>? {
        return interactor.getTodos()
    }

}
