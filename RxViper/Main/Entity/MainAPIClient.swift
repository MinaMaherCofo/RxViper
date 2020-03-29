//
//  MainAPIClient.swift
//  RxViper
//
//  Created by Mina on 3/14/20.
//  Copyright © 2020 Mina. All rights reserved.
//

import Foundation
import RxSwift

extension APIClient {
    func requestTodos () -> Observable<[Todo]> {
        let path = "todos"
        return Observable<[Todo]>.create { observer in
            
            let requestObservable = self.requestDecodable(path: path)
                .asObservable()
                .subscribe(onNext: { (todos) in
                    observer.onNext(todos)
                }, onError: { (error) in
                    observer.onError(error)
                })
            
            return Disposables.create(with: requestObservable.dispose)
        }
    }
}
