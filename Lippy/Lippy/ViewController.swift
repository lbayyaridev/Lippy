//
//  ViewController.swift
//  Lippy
//
//  Created by Laith M Bayyari on 1/14/20.
//  Copyright © 2020 Laith M Bayyari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        print("Hello")
        
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        // Get Bill Amount
        let bill = Double(billField.text!) ?? 0
        
        let tipPercen = [0.1, 0.18, 0.2]
        
        // Calculate the tip and total
        let tip = bill * tipPercen[0]
        let total = bill + tip
        
        // Update the tip and total Label
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

