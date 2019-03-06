//
//  ViewController.swift
//  Rectangle_Math
//
//  Created by Brandon Kimberlin on 3/6/19.
//  Copyright © 2019 Brandon Kimberlin. All rights reserved.
//

import UIKit

class DAPViewController: UIViewController {

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

    @IBAction func Diagonal(_ sender: UIButton)
    {
        
    }
    
    @IBAction func Area(_ sender: UIButton)
    {
        if let length = LengthInput.text, let lengthVal = Double(length) {
            if let width = WidthInput.text, let widthVal = Double(width) {
                let result = lengthVal * widthVal
                ResultOutput.text = String(result)
            } else {
                ResultOutput.text = "ERROR! No width value entered!"
            }
        } else {
            ResultOutput.text = "ERROR! No length value entered!"
        }
    }
    
    @IBAction func Perimeter(_ sender: UIButton)
    {
        if let length = LengthInput.text, let lengthVal = Double(length) {
            if let width = WidthInput.text, let widthVal = Double(width) {
                let result = (lengthVal * 2) + (widthVal * 2)
                ResultOutput.text = String(result)
            } else {
                ResultOutput.text = "ERROR! No width value entered!"
            }
        } else {
            ResultOutput.text = "ERROR! No length value entered!"
        }
    }

}

