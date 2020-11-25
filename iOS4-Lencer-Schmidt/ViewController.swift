//
//  ViewController.swift
//  iOS4-Lencer-Schmidt
//
//  Created by Timo Schmidt on 25.11.20.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var EURtoUSD: UITextField!
    @IBOutlet weak var EURtoGBP: UITextField!
    
    @IBOutlet weak var EURfield: UITextField!
    @IBOutlet weak var USDfield: UITextField!
    @IBOutlet weak var GBPfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func ExchangeRateUSD(_ sender: Any) {
    }
    
    @IBAction func ExchangeRateGBP(_ sender: Any) {
    }
    
    @IBAction func EUR(_ sender: Any) {
    }
    
    
    @IBAction func USD(_ sender: Any) {
        
        let euro_to_usd = OptionalStringToDouble(optional: EURtoUSD.text)
        
        let usdollar = OptionalStringToDouble(optional: USDfield.text)
        
        // zurück in Euro rechnen
        let euro: Double = usdollar / euro_to_usd
        // zurück ins Feld schreiben (als String)
        EURfield.text = String(format: "%.2lf", euro)
        
    }
    
    
    @IBAction func GBP(_ sender: Any) {
    }
    
    func OptionalStringToDouble(optional : String?) -> Double {
        var result = 0.0
        if let input = optional {
            if let curr = Double(input) {
                result = curr
            }
        }
        return result
    }
    

}

