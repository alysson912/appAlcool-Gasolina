//
//  CalculatorVC.swift
//  AppAlcool-Gasolina
//
//  Created by ALYSSON DODO on 14/02/23.
//

import UIKit

class CalculatorVC: UIViewController {

    var screen:  CalculatorScreen?
    
    override func loadView() {
        screen = CalculatorScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    

}
