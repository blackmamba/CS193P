//
//  ViewController.swift
//  Calculator
//
//  Created by Hitesh Ubharani on 3/30/15.
//  Copyright (c) 2015 Lacchi Labs. All rights reserved.
//  Lecture 1 exercise
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var display: UILabel!
    
    var userIsInTheMiddleOfTypingNumber: Bool = false
    
    @IBAction func appendDigit(sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsInTheMiddleOfTypingNumber {
            display.text = display.text! + digit
        } else {
            display.text = digit
        }

        println("digit = \(digit)")
    }
}

