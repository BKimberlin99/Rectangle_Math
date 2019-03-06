//
//  ViewController.swift
//  Rectangle_Math
//
//  Created by Brandon Kimberlin on 3/6/19.
//  Copyright © 2019 Brandon Kimberlin. All rights reserved.
//

import UIKit
import Foundation

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
    
    //Clear button to set inputs and output back to 0.0
    @IBAction func Clear(_ sender: UIButton)
    {
        LengthInput.text = "0.0"
        WidthInput.text = "0.0"
        ResultOutput.text = "0.0"
    }

    //Restrict what the user can enter into the LengthInput
    func LengthInput(_ LengthInput: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        //Set up variables for various illegal character cases
        let existingTextHasDecimalSeparator = LengthInput.text?.range(of: ".")
        let replacementTextHasDecimalSeparator = string.range(of: ".")
        let replacementTextHasLetter = string.rangeOfCharacter(from: NSCharacterSet.letters)
        let replacementTextHasWhiteSpace = string.rangeOfCharacter(from: NSCharacterSet.whitespacesAndNewlines)
        let replacementTextHasSymbols = string.rangeOfCharacter(from: NSCharacterSet.symbols)
        let replacementTextHasPunctuation = string.rangeOfCharacter(from: NSCharacterSet.punctuationCharacters)
        
        //Check what is being entered and if it is anything other than 0-9, the first period/decimal, or a delete, nothing happens in the app
        if existingTextHasDecimalSeparator != nil, replacementTextHasDecimalSeparator != nil {
            return false
        } else if replacementTextHasLetter != nil {
            return false
        } else if replacementTextHasWhiteSpace != nil {
            return false
        } else if replacementTextHasSymbols != nil {
            return false
        } else if replacementTextHasPunctuation != nil, replacementTextHasDecimalSeparator == nil {
            return false
        } else {
            return true
        }
    }
    
    //Restrict what the user can enter into the WidthInput
    func WidthInput(_ WidthInput: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        //Set up variables for various illegal character cases
        let existingTextHasDecimalSeparator = WidthInput.text?.range(of: ".")
        let replacementTextHasDecimalSeparator = string.range(of: ".")
        let replacementTextHasLetter = string.rangeOfCharacter(from: NSCharacterSet.letters)
        let replacementTextHasWhiteSpace = string.rangeOfCharacter(from: NSCharacterSet.whitespacesAndNewlines)
        let replacementTextHasSymbols = string.rangeOfCharacter(from: NSCharacterSet.symbols)
        let replacementTextHasPunctuation = string.rangeOfCharacter(from: NSCharacterSet.punctuationCharacters)
        
        //Check what is being entered and if it is anything other than 0-9, the first period/decimal, or a delete, nothing happens in the app
        if existingTextHasDecimalSeparator != nil, replacementTextHasDecimalSeparator != nil {
            return false
        } else if replacementTextHasLetter != nil {
            return false
        } else if replacementTextHasWhiteSpace != nil {
            return false
        } else if replacementTextHasSymbols != nil {
            return false
        } else if replacementTextHasPunctuation != nil, replacementTextHasDecimalSeparator == nil {
            return false
        } else {
            return true
        }
    }
}

