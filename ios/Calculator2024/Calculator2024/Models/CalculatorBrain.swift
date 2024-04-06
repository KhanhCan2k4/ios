//
//  CalculatorBrain.swift
//  Calculator2024
//
//  Created by  User on 06.04.2024.
//

import UIKit
class CalculatorBrain {
    //MARK: fields
    private var accumulator:Double?;
    
    //MARK: properties
    
    //MARK: constructors
    
    //MARK: methods
    public func setOperand(_ o:Double) {
        accumulator = o;
    }
    
    /*
    switch functionName {
        case "𝛑":
            displayValue = Double.pi;
        case "𝛜":
            displayValue = M_E;
        case "√":
            if let value = displayValue {
                displayValue = sqrt(value);
            }
//                if let displayText = display.text, let value = Double(displayText)  {
//                    display.text = String(format:"%0.3f" , sqrt(value));
//                }
        case "cos":
            if let value = displayValue {
                displayValue = cos(value);
            }
//                if let displayText = display.text, let value = Double(displayText)  {
//                    display.text = String(format:"%0.3f" , cos(value));
//                }
        case "±":
            if let value = displayValue {
                displayValue = sign(value);
            }
//                if let displayText = display.text, let value = Double(displayText)  {
//                    display.text = String(sign(value));
//                }
        case "X²":
            if let value = displayValue {
                displayValue = pow(value,2);
            }
//                if let displayText = display.text, let value = Double(displayText)  {
//                    display.text = String(format:"%0.3f" , pow(value, 2));
//                }
        case "AC":
            displayValue = 0;
//                display.text = "0";

        default:
            break;
    }
    */
}
