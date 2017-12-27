//
//  ViewController.swift
//  Shopper
//
//  Created by Jordan Vacca on 26/12/2017.
//  Copyright © 2017 Jordan Vacca. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTxt: CurrencyTxtField!
    @IBOutlet weak var pricetxt: CurrencyTxtField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var hoursLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = calcBtn
        pricetxt.inputAccessoryView  = calcBtn
        
        resultLabel.isHidden = true
        hoursLabel.isHidden = true
    }

  @objc func calculate() {
        if let wageTxt = wageTxt.text, let priceTxt = pricetxt.text {
            if let wage = Double(wageTxt), let price = Double(priceTxt) {
               view.endEditing(true)
                self.resultLabel.isHidden = false
                self.hoursLabel.isHidden = false
                resultLabel.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
    }

    @IBAction func clearCalculatorPress(_ sender: Any)
    {
        resultLabel.isHidden = true
        hoursLabel.isHidden = true
        wageTxt.text = ""
        pricetxt.text = ""
    }
    
}

