//
//  ViewController.swift
//  AL_calculator
//
//  Created by Сабина on 2/22/20.
//  Copyright © 2020 Сабина. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var number:Double = 0;
    var firstNumber:Double = 0;
    var mathSigh:Bool = false;
    var operation: Int = 0;
   
    @IBOutlet weak var result: UILabel!
    @IBAction func digits(_ sender: UIButton) {
        if mathSigh == true {
            result.text = String(sender.tag)
            mathSigh = false;
        }
        else {
            result.text = result.text! + String(sender.tag)
        }
        number =  Double(result.text!)!
    }
    
    @IBAction func operations(_ sender: UIButton) {
        if result.text != "" && sender.tag != 19 && sender.tag != 10 && sender.tag != 11 {
            firstNumber = Double(result.text!)!
            if sender.tag == 10 { //AC
        }
            else if sender.tag == 11 { //clear
                
        }
            else if sender.tag == 13 { //степень
                result.text = ""
        }
            else if sender.tag == 14 { //плюс
                result.text = ""
        }
            else if sender.tag == 15 { //минус
                result.text = ""
        }
            else if sender.tag == 16 { //деление
                result.text = ""
        }
            else if sender.tag == 17 { //умножение
                result.text = ""
        }
            else if sender.tag == 18 { //корень
                result.text = ""
        }
            else if sender.tag == 20 { //процент
                result.text = ""
        }
            operation = sender.tag
            mathSigh = true;
}
        else if sender.tag == 19 { //equal
            if operation == 14 {
                result.text = String(firstNumber + number)
            }
            else if operation == 15 {
                result.text = String(firstNumber - number)
            }
            else if operation == 16 {
                result.text = String(firstNumber / number)
            }
            else if operation == 17 {
                result.text = String(firstNumber * number)
            }
            else if operation == 18 {
                result.text = String(sqrt(firstNumber))
            }
//            else if operation == 12 { //factorial
//                var x:Int = 1
//                var fac: Int = 1
//                for i in 1... {
//                    x = x * i
//                }
//                result.text = String(x)
           // }
            else if operation == 13 {
                result.text = String(pow(firstNumber,number))
            }
            else if operation == 20 {
                result.text = String(firstNumber / 100)
            }
        }
        else if sender.tag == 11 {  //C
            result.text = ""
            firstNumber = 0
            number = 0
            operation = 0
        }
        else if sender.tag == 10 { //AC
            result.text = "0.0"
        }
       
        func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

}
