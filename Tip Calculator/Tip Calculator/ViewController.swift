//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Tiffany Lee on 9/29/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipSlider2: UISlider!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        calculateTip ()
    }
    
    @IBAction func tipSlider(_ sender: UISlider) {
        tipPercentageLabel.text! = "Tip Percentage " + String(Int( sender.value)) + " %"
    }
    func calculateTip () {
        let tipAmount = Float(billField.text!)! * tipSlider2.value/100
        let total = tipAmount + Float(billField.text!)!
        tipAmountLabel.text! = String(tipAmount)
        totalLabel.text! = String(total)
        tipAmountLabel.text =  String (format: "$%.2f", tipAmount)
        totalLabel.text = String(format: "$%.2f", total)
    }

}
