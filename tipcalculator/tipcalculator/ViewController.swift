//
//  ViewController.swift
//  tipcalculator
//
//  Created by Zainab Alibhai on 7/18/20.
//  Copyright © 2020 Zainab Alibhai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var tipLabel2: UILabel!
    @IBOutlet weak var tipLabel3: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        
        view.endEditing(true)
        
    }
    @IBAction func calculateTip(_ sender: Any) {
        
        //get bill amount
        let bill = Double(billField.text!) ?? 0
            
        //calculate the tip and total
        let tipPercentages = [0.15, 0.18, 0.2]
            
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //update the tip and total
        tipLabel.text = String(format: "$%.2f", tip)
        tipLabel2.text = String(format: "$%.2f", tip/2)
        tipLabel3.text = String(format: "$%.2f", tip/3)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

