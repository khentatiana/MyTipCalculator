//
//  ViewController.swift
//  MyTipCalculator
//
//  Created by Tatiana on 9/10/20.
//  Copyright © 2020 Tatiana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onTap(_ sender: Any) {
        print("Hello!")
        view.endEditing(true)
    }
}

