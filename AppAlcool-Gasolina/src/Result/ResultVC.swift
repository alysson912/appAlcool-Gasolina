//
//  ResultVC.swift
//  AppAlcool-Gasolina
//
//  Created by ALYSSON DODO on 15/02/23.
//

import UIKit

class ResultVC: UIViewController {

    var screen: ResultScreen?
    
    override func loadView() {
        screen = ResultScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
    }
    

}
