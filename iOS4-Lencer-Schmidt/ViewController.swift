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
        
        let euro_to_usd = OptionalStringToDouble(optional: EURtoUSD.text)
        let euro_to_gbp = OptionalStringToDouble(optional: EURtoGBP.text)
        
        let euro = OptionalStringToDouble(optional: EURfield.text)
        
        // USD-Feld berechnen
        let usd = euro * euro_to_usd
        USDfield.text = String(format: "%.2lf", usd)
        
        // GBP-Feld berechnen
        let gbp = euro * euro_to_gbp
        GBPfield.text = String(format: "%.2lf", gbp)
        
    }
    
    
    @IBAction func USD(_ sender: Any) {
        
        let euro_to_usd = OptionalStringToDouble(optional: EURtoUSD.text)
        let euro_to_gbp = OptionalStringToDouble(optional: EURtoGBP.text)
        
        let usdollar = OptionalStringToDouble(optional: USDfield.text)
        
        // Euro-Feld berechnen
        let euro = usdollar / euro_to_usd
        EURfield.text = String(format: "%.2lf", euro)
        
        // GBP-Feld berechnen
        let gbp = euro * euro_to_gbp
        GBPfield.text = String(format: "%.2lf", gbp)
        
    }
    
    
    @IBAction func GBP(_ sender: Any) {
        
        let euro_to_usd = OptionalStringToDouble(optional: EURtoUSD.text)
        let euro_to_gbp = OptionalStringToDouble(optional: EURtoGBP.text)
        
        let gbp = OptionalStringToDouble(optional: GBPfield.text)
        
        // Euro-Feld berechnen
        let euro = gbp / euro_to_gbp
        EURfield.text = String(format: "%.2lf", euro)
        
        // USD-Feld berechnen
        let usd = euro * euro_to_usd
        USDfield.text = String(format: "%.2lf", usd)
        
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

