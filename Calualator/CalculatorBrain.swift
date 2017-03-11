//
//  CalculatorBrain.swift
//  Calualator
//
//  Created by Brandon on 3/5/17.
//  Copyright © 2017 Brandon. All rights reserved.
//

import Foundation
import UIKit

class CalculatorBrain {
     var _first_Number: Double?
     var _second_Number: Double?
     var _opperator: String?
     var _output: Double?
  
    
    
    func opperation() -> String
    {
        
        var output = String()
       
        switch self._opperator!  {
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
        return output
    }
    
    func changing_sign(sign: String) -> String {
        var number = Double(sign)
        if number! <= 0.0
        {
          number! = abs(number!)
          return String(number!)
        }
        else{
            var new_number = 0.0 - number!
            return String(new_number)
        }
    }
    
        func percentage(number : Double) -> String{
            var new_number = String(sqrt(number))
            return new_number
        }
    
 
}
