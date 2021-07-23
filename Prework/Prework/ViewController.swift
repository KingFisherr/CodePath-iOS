//
//  ViewController.swift
//  Prework
//
//  Created by Tahsin Provath on 7/22/21.
//  Copyright © 2021 Tahsin Provath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var billAmountTextField: UITextField!
    
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        // Bill amount from text field
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // Tip percentages
        let tipPercentages = [0.15, 0.18, 0.2]
        
        // Calculate tip by multiplying bill by tip %
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        
        // Calculate total by adding bill + new tip value
        let total = bill + tip
        
        // Update tip and total labels
        tipAmountLabel.text = String(format: "$%2f", tip)
        
        totalLabel.text = String(format: "$%2f", total)
        
    }
    
}

