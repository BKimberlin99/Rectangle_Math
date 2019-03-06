//
//  ViewController.swift
//  Rectangle_Math
//
//  Created by Brandon Kimberlin on 3/6/19.
//  Copyright © 2019 Brandon Kimberlin. All rights reserved.
//

import UIKit

class DAPViewController: UIViewController {

    //Variables to connect to inputs and output
    @IBOutlet var LengthInput: UITextField!
    @IBOutlet var WidthInput: UITextField!
    @IBOutlet var ResultOutput: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //Calculate the diagonal of the rectangle with the given values
    @IBAction func Diagonal(_ sender: UIButton)
    {
        if let length = LengthInput.text, let lengthVal = Double(length) {
            if let width = WidthInput.text, let widthVal = Double(width) {
                let value = (pow(lengthVal, 2)) + (pow(widthVal, 2))
                let result = value.squareRoot()
                ResultOutput.text = String(result)
            } else {
                ResultOutput.text = "ERROR! No width value entered!"    //Error messages if either width or length
                                                                        //are not entered
            }
        } else {
            ResultOutput.text = "ERROR! No length value entered!"
        }
    }
    
    //Calculate the area of the rectangle with the given values
    @IBAction func Area(_ sender: UIButton)
    {
        if let length = LengthInput.text, let lengthVal = Double(length) {
            if let width = WidthInput.text, let widthVal = Double(width) {
                let result = lengthVal * widthVal
                ResultOutput.text = String(result)
            } else {
                ResultOutput.text = "ERROR! No width value entered!" //Error messages
            }
        } else {
            ResultOutput.text = "ERROR! No length value entered!"
        }
    }
    
    //Calculate the perimeter of the rectangle with the given values
    @IBAction func Perimeter(_ sender: UIButton)
    {
        if let length = LengthInput.text, let lengthVal = Double(length) {
            if let width = WidthInput.text, let widthVal = Double(width) {
                let result = (lengthVal * 2) + (widthVal * 2)
                ResultOutput.text = String(result)
            } else {
                ResultOutput.text = "ERROR! No width value entered!" //Error messages
            }
        } else {
            ResultOutput.text = "ERROR! No length value entered!"
        }
    }

}

