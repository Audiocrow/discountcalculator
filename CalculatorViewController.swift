//
//  CalculatorViewController.swift
//  Lab2-27
//
//  Created by CampusUser on 2/27/17.
//  Copyright © 2017 Alexander Edgar. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController, UITextFieldDelegate {
    //MARK: Outlets
    
    @IBOutlet weak var priceField: UITextField!
    @IBOutlet weak var amtOffField: UITextField!
    @IBOutlet weak var discountField: UITextField!
    @IBOutlet weak var otherField: UITextField!
    @IBOutlet weak var taxField: UITextField!
    @IBOutlet weak var originalLabel: UILabel!
    @IBOutlet weak var discountLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        //Set this as delegate for all text fields
        priceField.delegate = self
        amtOffField.delegate = self
        discountField.delegate = self
        otherField.delegate = self
        taxField.delegate = self
        //Make Swipe Gestures
        let swipeLeft:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe))
        swipeLeft.direction = UISwipeGestureRecognizerDirection.left
        view.addGestureRecognizer(swipeLeft)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField)->Bool {
        textField.resignFirstResponder()
        return true
    }
   func textFieldDidEndEditing(_ textField: UITextField)->Bool {
        let model = CalculatorModel.shared
        if textField.text != nil {
            let text = textField.text!
            if textField === priceField { model.price = Int(text) ?? 0 }
            else if textField === amtOffField { model.amtOff = Int(text) ?? 0 }
            else if textField === discountField { model.discount = Float(text) ?? 0 }
            else if textField === otherField { model.otherDiscount = Float(text) ?? 0 }
            else if textField === taxField { model.tax = Float(text) ?? 0 }
        }
        originalLabel.text = "Original Price: " + String(model.originalPrice)
        discountLabel.text = "Discount Price: " + String(model.discountPrice)
        return true
    }
    
    //Swipe Function
    func handleSwipe(_ sender: UIGestureRecognizer) {
        self.performSegue(withIdentifier: "showResults", sender: self)
    }
    //Enable Unwinding other views
    @IBAction func unwindToCalc(segue:UIStoryboardSegue) {}
}
