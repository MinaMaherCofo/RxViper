//
//  BasePresenter.swift
//  RxViper
//
//  Created by Mina on 3/18/20.
//  Copyright © 2020 Mina. All rights reserved.
//

import Foundation

protocol BasePresenter {
    associatedtype Interactor: BaseInteractor
    associatedtype Router: BaseRouter
    
    var interactor: Interactor { set get }
    var router: Router { set get }
}
