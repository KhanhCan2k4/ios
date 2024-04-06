//
//  ViewController.swift
//  Calculator2024
//
//  Created by  User on 09.03.2024.
//

import UIKit

func sign(_ x:Double) -> Double {
    return -1 * x;
}

class CalculatorController: UIViewController {

    //MARK: fields
    @IBOutlet weak var display: UILabel!
    private var isTyping = false;
    
    
    //MARK: constructors    


    //MARK: methods
    
    @IBAction func digitProcessing(_ sender: UIButton) {
        let digit = sender.titleLabel!.text!;
        let displayText = display.text!;
        
        if isTyping {
            //add more
            display.text = displayText + digit;
        } else {
            //overwrite
            display.text = digit;
            
            if digit != "0"{
                isTyping = true;
            }
        }
    }
    
    //MARK: calculator variable
    private var displayValue :Double? {
        get {
            if let displayText = display.text, let value = Double(displayText)  {
                return value;
            }
            return nil;
        }
        
        set {
            display.text = String(format: "%0.3f", newValue!);
        }
    }
    
    private let myCalculatorBrain = CalculatorBrain();
    
    //MARK: function processing
    @IBAction func functionProcessing(_ sender: UIButton) {
//        1
//        display.text = "\(Double.pi)";
        
//        2
//        display.text = String(format:"%0.3f" , Double.pi);
        let functionName = sender.titleLabel!.text!;
        
        //set data into model CalculatorBrain
        if let value = displayValue {
            myCalculatorBrain.setOperand(value);
        }
        
        
        isTyping = false;
        
    }
    
    
    
    
    
}

