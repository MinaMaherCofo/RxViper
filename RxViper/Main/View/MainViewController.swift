//
//  MainViewController.swift
//  RxViper
//
//  Created by Mina on 3/14/20.
//  Copyright © 2020 Mina. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift

class MainViewController: BaseViewController {
    var presenter: MainPresenter?
    var disposeBag: DisposeBag = DisposeBag()
    
    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initObservables()
    }
    
    func initObservables () {
        presenter?.getTodos()?
            .asObservable()
            .do(onNext: {  
                    print("Todo#1: \($0[0].title)")
                }, onError: { (error) in
                    print(error)
            }).subscribe()
            .disposed(by: disposeBag)
    }
}
