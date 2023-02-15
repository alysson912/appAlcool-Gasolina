//
//  CalculatorVC.swift
//  AppAlcool-Gasolina
//
//  Created by ALYSSON DODO on 14/02/23.
//

import UIKit

class CalculatorVC: UIViewController {

    var screen:  CalculatorScreen?
    var alert: Alert?
    
    override func loadView() {
        screen = CalculatorScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        alert = Alert(controller: self)
        screen?.delegate(delegate: self) // assinando protocolo 
        
    }
    func validateTextFields() -> Bool {
        guard let ethanolPrice = screen?.ethanolPriceTextField.text else { return false}
        guard let gasPrice = screen?.gasPriceTextField.text else { return false}
        
        if ethanolPrice.isEmpty && gasPrice.isEmpty {
            alert?.showAlertInformation(title: "Atenção", message: "Informe os valores do álcool e da gasolina ")
            return false
        }else if ethanolPrice.isEmpty{
            alert?.showAlertInformation(title: "Atenção", message: "Informe o valor do álcool ")
            return false
        } else if  gasPrice.isEmpty{
            alert?.showAlertInformation(title: "Atenção", message: "Informe o valor da gasolina ")
            return false
        }
        return true
    }

}
extension CalculatorVC: CalculatorScreenDelegate {
    func tappedCalculateButton() {
        let vc = ResultVC()
        navigationController?.pushViewController(vc, animated: true)
//        if validateTextFields(){
//
//        let formatter = NumberFormatter()
//        formatter.numberStyle = .decimal
//
//        let ethanolPrice: Double = ( formatter.number(from: screen?.ethanolPriceTextField.text ?? "0.0") as? Double) ?? 0.0
//        let gasPrice: Double = ( formatter.number(from: screen?.gasPriceTextField.text ?? "0.0") as? Double) ?? 0.0
//
//            let vc = ResultVC()
//        if ethanolPrice / gasPrice > 0.7 {
//
//        }else {
//            print("melhor utilizar alcool")
//        }
//            navigationController?.pushViewController(vc, animated: true)
//    }
}
    
    func tappedBackButton() {
        navigationController?.popViewController(animated: true) // action back screen
    }
    
    
}
