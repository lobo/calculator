//
//  ViewController.swift
//  Calculator
//
//  Created by Daniel Lobo on 1/2/16.
//  Copyright © 2016 Daniel Lobo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!
    
    var userIsInTheMiddleOfTypingANumber: Bool = false

    @IBAction func appendDigit(sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsInTheMiddleOfTypingANumber {
            display.text = display.text! + digit
        } else {
            display.text = digit
            userIsInTheMiddleOfTypingANumber = true
        }
       
        print("digit = \(digit)")
    }


}

