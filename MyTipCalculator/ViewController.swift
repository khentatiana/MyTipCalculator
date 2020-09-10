//
//  ViewController.swift
//  MyTipCalculator
//
//  Created by Tatiana on 9/10/20.
//  Copyright © 2020 Tatiana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
    }


    @IBAction func calculateTip(_ sender: Any) {
        //Get bill amount. If invalid input, then replace with zero.
        let bill = Double(billField.text!) ?? 0
        //Calculate tip and total
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        //Update tip and total
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f",total)
        
    }
    @IBAction func onTap(_ sender: Any) {
        print("Hello!")
        view.endEditing(true)
    }
}

