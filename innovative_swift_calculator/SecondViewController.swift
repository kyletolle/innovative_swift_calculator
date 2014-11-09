//
//  SecondViewController.swift
//  innovative_swift_calculator
//
//  Created by Kyle Tolle on 11/8/14.
//  Copyright (c) 2014 Kyle Tolle. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var txtSubtractionFirstNumber: UITextField!
    @IBOutlet weak var txtSubtractionSecondNumber: UITextField!
    @IBOutlet weak var lblSubtractionAnswer: UILabel!
    
    var subtractionFirstNumber = ""
    var subtractionSecondNumber = ""
    var subtractionAnswer : Float = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnSubtractionCalculate(sender: UIButton) {
        subtractionFirstNumber = txtSubtractionFirstNumber.text
        subtractionSecondNumber = txtSubtractionSecondNumber.text
        
        var fFirstNumber = (subtractionFirstNumber as NSString).floatValue
        var fSecondNumber = (subtractionSecondNumber as NSString).floatValue
        
        subtractionAnswer = fFirstNumber - fSecondNumber
        
        lblSubtractionAnswer.text = "\(subtractionAnswer)"
    }
    
    @IBAction func btnSubtractionClear(sender: UIButton) {
        txtSubtractionFirstNumber.text = ""
        txtSubtractionSecondNumber.text = ""
        lblSubtractionAnswer.text = "Answer"
    }

}

