//
//  FirstViewController.swift
//  RxViper
//
//  Created by Mina on 3/14/20.
//  Copyright © 2020 Mina. All rights reserved.
//

import UIKit

class FirstViewController: BaseViewController {
    var presenter: FirstPresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       print("View Did Load  First VC")
        
        // Do any additional setup after loading the view.
    }

    
    deinit {
        print("De init first VC")
    }
    
    @IBAction func goToNext(_ sender: UIButton) {
        guard let navigationController = navigationController else { return }
        presenter?.goToSecond(navigationController: navigationController)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
