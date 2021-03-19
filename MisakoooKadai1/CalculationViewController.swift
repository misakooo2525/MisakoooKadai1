//
//  CalculationViewController.swift
//  MisakoooKadai1
//
//  Created by misakoarai on 2021/03/17.
//

import UIKit

class CalculationViewController: UIViewController {
    @IBOutlet private weak var numberTextField1: UITextField!
    @IBOutlet private weak var numberTextField2: UITextField!
    @IBOutlet private weak var numberTextField3: UITextField!
    @IBOutlet private weak var numberTextField4: UITextField!
    @IBOutlet private weak var numberTextField5: UITextField!
    @IBOutlet private weak var totalLabel: UILabel!
    
    @IBAction private func didTapCalculationButton(_ sender: Any) {
        let total = sum(text1: numberTextField1.text ?? "",
                        text2: numberTextField2.text ?? "",
                        text3: numberTextField3.text ?? "",
                        text4: numberTextField4.text ?? "",
                        text5: numberTextField5.text ?? "")
        
        totalLabel.text = String(total)
    }
    
    private func sum(text1: String, text2: String, text3: String, text4: String, text5: String) -> Int {

        var total = 0
        
        for text in [text1, text2, text3, text4, text5] {
            total += Int(text) ?? 0
        }

        return total
    }
}
