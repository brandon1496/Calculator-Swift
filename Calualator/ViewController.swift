//
//  ViewController.swift
//  Calualator
//
//  Created by Brandon on 2/15/17.
//  Copyright © 2017 Brandon. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    var text_label: String = ""
    
    //Creating the Brain object of the Calculator
    let calualator = CalculatorBrain()
    
    // Label is what the user see at the top of the calculator
    @IBOutlet weak var text_box: UILabel!
    
    // The function handle when a number is clicked
    @IBAction func NumberBtnClicked(_ sender: UIButton)
    {
        
        // if statement happens when the user clicks on the decimial point button
        
        if sender.tag == 22
        {
            if text_box.text!.range(of:".") != nil
            {
               return
            }
            else
            {
                text_box.text! += "."
                text_label = text_box.text!
            }
        }
        else
        {
        // it displays what number he user clicked on and adds it to the prev number
        text_box.text = text_label + sender.currentTitle!
        text_label = text_box.text!
        }
    }
    
    // handles what happens if a opperator button was clicked
    @IBAction func btn_opperator(_ sender: UIButton)
    {
        
    var current_number: Double = Double(text_box.text!)!
    calualator._first_Number = current_number
    
    // switch statement assigns the objects opperator
    switch sender.currentTitle!
        {
        case "+" :
            calualator._opperator = "+"
            break
        case "-" :
            calualator._opperator = "-"
            break
        case "/" :
            calualator._opperator = "/"
            break
        case "X" :
            calualator._opperator = "*"
            break
        default :
            // handle if the user wants the square root of the number
            var new_number = calualator.percentage(number: current_number)
            text_box.text = new_number
            
            break
            
        
        }
        text_label = ""     
       
        
    }
    // If user clicks equal this functions handles it
    @IBAction func equal_btn(_ sender: UIButton)
    
    {
        calualator._second_Number = Double(text_box.text!)
        text_box.text = calualator.opperation()
        text_label = ""
    }
    
    // If user wants to clear the screen
    @IBAction func clear_btn(_ sender: UIButton)
    {
        text_label = ""
        text_box.text! = "0"
      
    }
    // If user wants to change the sign of the number to postive or negative
    @IBAction func change_sign(_ sender: UIButton)
    {
        text_box.text! = calualator.changing_sign(sign: text_box.text!)
        
    }
       override func viewDidLoad() {
        super.viewDidLoad()
        //calcScreen.text = String(numberScreen)
        // Do any additional setup after loading the view, typically from a nib.
        //screen = screen + calcScreen.text!
      
    
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
        }



