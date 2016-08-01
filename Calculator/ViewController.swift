//
//  ViewController.swift
//  Calculator
//
//  Created by Arshin Jain on 5/21/16.
//  Copyright © 2016 Arshin Jain. All rights reserved.
//

// Note: nil = not set

import UIKit

class ViewController: UIViewController {
    
    // IBOutlets
    @IBOutlet weak var display: UILabel!
    
    // Variables
    var userIsInTheMiddleOfTyping = false
    
    // IBActions
    @IBAction func touchDigit(_ sender: AnyObject) {
        
        let digit = sender.currentTitle!
        if userIsInTheMiddleOfTyping {
            let textCurrentlyInDisplay = display.text
            display.text = textCurrentlyInDisplay! + digit!
        } else {
            display.text = digit
        }
        
        userIsInTheMiddleOfTyping = true
        
        
    }

    @IBAction func clear(_ sender: AnyObject) {
        display!.text = "0"
    }
}

