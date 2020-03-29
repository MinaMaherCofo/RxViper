//
//  FirstPresenter.swift
//  RxViper
//
//  Created by Mina on 3/14/20.
//  Copyright © 2020 Mina. All rights reserved.
//

import UIKit
import RxSwift

class SecondPresenter {
    var interactor: SecondInteractor
    var router: SecondRouter
    
    var viewSubject: PublishSubject<UINavigationController>?
    var disposeBag = DisposeBag()
    
    init(router: SecondRouter, interactor: SecondInteractor) {
        self.router = router
        self.interactor = interactor
        
        viewSubject = PublishSubject()
        setupObservables()
        
        print("Init Second presenter")
    }
    
    func setupObservables () {
        viewSubject?.asObservable()
            .subscribeOn(MainScheduler.instance)
            .subscribe(onNext: { [weak self] (navigationController) in
                self?.goBack(navigationController: navigationController)
                }, onDisposed: {
                    print("disposed secondViewSubject")
            }).disposed(by: disposeBag)
    }
    
    private func goBack (navigationController: UINavigationController) {
        router.goBack(navigationController: navigationController)
    }
    
    deinit {
        print("deinit Second Presenter")
    }
}
