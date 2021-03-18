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
        let result = self.sum(value1: self.numberTextField1.text ?? "",
                              value2: self.numberTextField2.text ?? "",
                              value3: self.numberTextField3.text ?? "",
                              value4: self.numberTextField4.text ?? "",
                              value5: self.numberTextField5.text ?? "")
        
        self.totalLabel.text = String(result)
    }
    
    private func sum(value1: String, value2: String, value3: String, value4: String, value5: String) -> Int {
        let values: [String] = [value1, value2, value3, value4, value5]
        var result = 0
        
        for number in values {
            result += Int(number) ?? 0
        }
        return result
    }
}
