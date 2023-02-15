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
        screen?.delegate(delegate: self) // assinando protocolo 
       
    }
    

}
extension CalculatorVC: CalculatorScreenDelegate {
    func tappedCalculateButton() {
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        
        let ethanolPrice: Double = ( formatter.number(from: screen?.ethanolPriceTextField.text ?? "0.0") as? Double) ?? 0.0
        let gasPrice: Double = ( formatter.number(from: screen?.gasPriceTextField.text ?? "0.0") as? Double) ?? 0.0
        
        if ethanolPrice / gasPrice > 0.7 {
            print("melhor utilizar gasolina")
        }else {
            print("melhor utilizar alcool")
        }
    }
    
    func tappedBackButton() {
        navigationController?.popViewController(animated: true) // action back screen
    }
    
    
}
