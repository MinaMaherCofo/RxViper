//
//  MainInteractor.swift
//  RxViper
//
//  Created by Mina on 3/14/20.
//  Copyright © 2020 Mina. All rights reserved.
//

import Foundation
import RxSwift

class MainInteractor: BaseInteractor {
    var todosSubject: PublishSubject<[Todo]>
    var disposeBag: DisposeBag = DisposeBag()
    
    init() {
        todosSubject = PublishSubject()
    }
    
    func getTodos () -> PublishSubject<[Todo]> {
        APIClient().requestTodos()
            .asObservable()
            .subscribe(onNext: { (todos) in
                self.todosSubject.onNext(todos)
            }, onError: { (error) in
                self.todosSubject.onError(error)
            }).disposed(by: disposeBag)
        return todosSubject
    }
}
