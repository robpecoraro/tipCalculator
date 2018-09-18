//
//  ViewController.swift
//  tip calculator
//
//  Created by admin on 9/17/18.
//  Copyright © 2018 RobPecoraro. All rights reserved.
//
//
// Figured out how to round to the 2nd place using Foundation round method and some basic math.
// To get to the 2nd place, follow these steps:
// 1. Multiply your value by 100 (for the 2nd place unit)
// 2. Round that value.
// 3. Divide the roudned value by 100.
// 4. Profit.
//
// example:
//
//  (round(12.12432 * 100) / 100)

import UIKit
import Foundation

class ViewController: UIViewController {
   
    @IBOutlet var mealCost: UITextField!
    @IBOutlet var tipPercentage: UITextField!
    @IBOutlet var salesTax: UITextField!
    @IBOutlet var resultText: UILabel!
    @IBOutlet var tipText: UILabel!
    @IBOutlet var totalText: UILabel!
    
    @IBAction func buttonCalculate(_ sender: Any) {

        let dblMealCost = Double(mealCost.text!)!
        let dblSales = Double(salesTax.text!)!
        let dblTip = Double(tipPercentage.text!)!
        let totalTax = Double(round(((dblMealCost * (dblSales / 100)) * 100)) / 100)
        let tipCost = Double(round(((dblMealCost * (dblTip / 100)) * 100)) / 100)
        let total = Double(round(((dblMealCost + totalTax + tipCost) * 100)) / 100)
        
        resultText.text = "The sales tax is $\(totalTax)"
        tipText.text = "The tip amount is $\(tipCost)"
        totalText.text = "Total meal cost is $\(total)"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
