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
    let calualator = CalculatorBrain()
    @IBOutlet weak var text_box: UILabel!
    
    @IBAction func NumberBtnClicked(_ sender: UIButton) {
        if sender.tag == 22 {
            if text_box.text!.range(of:".") != nil{
               return
            }
            else {
                text_box.text! += "."
                text_label = text_box.text!
            }
        }
        else{
        text_box.text = text_label + sender.currentTitle!
        text_label = text_box.text!
        }
    }
    @IBAction func btn_opperator(_ sender: UIButton) {
        
    var current_number: Double = Double(text_box.text!)!
    calualator._first_Number = current_number
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
            
            var new_number = calualator.percentage(number: current_number)
            text_box.text = new_number
            
            break
            
        
        }
        text_label = ""     
       
        
    }
    
    @IBAction func equal_btn(_ sender: UIButton) {
        calualator._second_Number = Double(text_box.text!)
        text_box.text = calualator.opperation()
        text_label = ""
    }
    
    @IBAction func clear_btn(_ sender: UIButton) {
        text_label = ""
        text_box.text! = "0"
      
    }
    
    @IBAction func change_sign(_ sender: UIButton) {
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



