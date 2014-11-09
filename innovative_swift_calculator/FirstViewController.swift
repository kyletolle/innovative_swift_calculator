//
//  FirstViewController.swift
//  innovative_swift_calculator
//
//  Created by Kyle Tolle on 11/8/14.
//  Copyright (c) 2014 Kyle Tolle. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var txtAdditionFirstNumber: UITextField!
    @IBOutlet weak var txtAdditionSecondNumber: UITextField!
    @IBOutlet weak var lblAdditionAnswer: UILabel!
    
    @IBOutlet weak var txtMultiplicationFirstNumber: UITextField!
    @IBOutlet weak var txtMultiplicationSecondNumber: UITextField!
    @IBOutlet weak var lblMultiplicationAnswer: UILabel!
    
    @IBOutlet weak var txtDivisionFirstNumber: UITextField!
    @IBOutlet weak var txtDivisionSecondNumber: UITextField!
    @IBOutlet weak var lblDivisionAnswer: UILabel!
    
    var additionFirstNumber = ""
    var additionSecondNumber = ""
    var additionAnswer : Float = 0
    
    var multiplicationFirstNumber = ""
    var multiplicationSecondNumber = ""
    var multiplicationAnswer : Float = 0
    
    var divisionFirstNumber = ""
    var divisionSecondNumber = ""
    var divisionAnswer : Float = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnAdditionCalculate(sender: UIButton) {
        additionFirstNumber = txtAdditionFirstNumber.text
        additionSecondNumber = txtAdditionSecondNumber.text
        
        var fFirstNumber = (additionFirstNumber as NSString).floatValue
        var fSecondNumber = (additionSecondNumber as NSString).floatValue
        
        additionAnswer = fFirstNumber + fSecondNumber
        
        lblAdditionAnswer.text = "\(additionAnswer)"
    }
    
    @IBAction func btnAdditionClear(sender: UIButton) {
        txtAdditionFirstNumber.text = ""
        txtAdditionSecondNumber.text = ""
        lblAdditionAnswer.text = "Answer"
    }

    @IBAction func btnMultiplicationCalculate(sender: UIButton) {
        multiplicationFirstNumber = txtMultiplicationFirstNumber.text
        multiplicationSecondNumber = txtMultiplicationSecondNumber.text
        
        var fFirstNumber = (multiplicationFirstNumber as NSString).floatValue
        var fSecondNumber = (multiplicationSecondNumber as NSString).floatValue
        
        multiplicationAnswer = fFirstNumber * fSecondNumber
        
        lblMultiplicationAnswer.text = "\(multiplicationAnswer)"
    }
    
    @IBAction func btnMultiplicationClear(sender: UIButton) {
        txtMultiplicationFirstNumber.text = ""
        txtMultiplicationSecondNumber.text = ""
        lblMultiplicationAnswer.text = "Answer"
    }
    
    @IBAction func btnDivisionCalculate(sender: UIButton) {
        divisionFirstNumber = txtDivisionFirstNumber.text
        divisionSecondNumber = txtDivisionSecondNumber.text
        
        var fFirstNumber = (divisionFirstNumber as NSString).floatValue
        var fSecondNumber = (divisionSecondNumber as NSString).floatValue
        
        divisionAnswer = fFirstNumber / fSecondNumber
        
        lblDivisionAnswer.text = "\(divisionAnswer)"
    }
    
    @IBAction func btnDivisionClear(sender: UIButton) {
        txtDivisionFirstNumber.text = ""
        txtDivisionSecondNumber.text = ""
        lblDivisionAnswer.text = "Answer"
    }
}

