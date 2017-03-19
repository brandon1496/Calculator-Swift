//
//  CalculatorBrain.swift
//  Calualator
//
//  Created by Brandon on 3/5/17.
//  Copyright © 2017 Brandon. All rights reserved.
//

import Foundation
import UIKit
// class that handles the data
class CalculatorBrain {
     var _first_Number: Double?
     var _second_Number: Double?
     var _opperator: String?
     var _output: Double?
  
    
    // handles all the math functions and returns the output 
    func opperation() -> String
    {
        
        var output = String()
       
        switch self._opperator!
        {
            case "+":
            output = String(self._first_Number! + self._second_Number!)
            break
            case "-":
            output = String(self._first_Number! - self._second_Number!)
            break
            case "*":
            output = String(self._first_Number! * self._second_Number!)
            break
            case "/":
            output = String(self._first_Number! / self._second_Number!)
            break
        default:
            break
            
        }
        self._output = Double(output)!
        return output
    }
    // it gets the string number of the current number which then it swithes the sign
    func changing_sign(sign: String) -> String
    {

        var number = Double(sign)
        if number! <= 0.0
        {
          number! = abs(number!)
          return String(number!)
        }
        else
        {
            var new_number = 0.0 - number!
            return String(new_number)
        }
    }
        // Gets the square root
        func percentage(number : Double) -> String
        {
            var new_number = String(sqrt(abs(number)))
            return new_number
        }
    
 
}
