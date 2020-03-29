//
//  SecondViewController.swift
//  RxViper
//
//  Created by Mina on 3/15/20.
//  Copyright © 2020 Mina. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var presenter: SecondPresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewdidload secondviewcontroller")
        // Do any additional setup after loading the view.
        
        
        
    }
    
    deinit {
        print("deinit secondviewcontroller")
    }
    
    @IBAction func backAction(_ sender: UIButton) {
        guard let navigationController = navigationController else { return }
//        presenter?.goBack(navigationController: navigationController)
        presenter?.viewSubject?.asObserver().onNext(navigationController)
    }
}
