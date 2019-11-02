//
//  ViewController.swift
//  Fizz-Buzz
//
//  Created by Meinhard Benedict Capucao on 10/7/19.
//  Copyright © 2019 Meinhard Benedict Capucao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TextField: UITextField!
    
    @IBOutlet var label: UILabel!

    @IBAction func submitButton(_ sender: Any) {
        var num = Int(TextField.text ?? "") ?? 0
        if (num == 0) {
            num = 1
        }
        
        
        
        if (num < 100) {
            
            label.text = "Please enter a number higher than 100."
        
        } else {
        
    
        fizzBuzz(value: num)
            label.text = "Enter a number higher than 100."
        TextField.text = ""
            
        }
    }
    
    
    @IBOutlet weak var printFizzBuzz: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }
    
    
    func fizzBuzz(value: Int) {
    printFizzBuzz.text = ""
        for i in 1...value {
            if i % 3 == 0 && i % 5 == 0 && i % 7 == 0 {
                printFizzBuzz.text? += "Fizz-Buzz-Bang, "
            } else if i % 3 == 0 && i % 5 == 0 {
               printFizzBuzz.text? += "Fizz-Buzz, "
            }
            else if i % 3 == 0 {
               printFizzBuzz.text? += "Fizz, "
            } else if i % 5 == 0 {
                 printFizzBuzz.text? += "Buzz, "
            } else if i % 7 == 0 {
                 printFizzBuzz.text? += "Bang, "
            } else {
                 printFizzBuzz.text? += String(i) + ", "
            }
        }
    }
}

