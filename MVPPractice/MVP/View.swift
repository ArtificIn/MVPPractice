//
//  ViewController.swift
//  MVPPractice
//
//  Created by 성다연 on 20/03/2020.
//  Copyright © 2020 성다연. All rights reserved.
//

import UIKit


protocol ValueUpdate : class {
    var calculateNumber : Int {get set}
    var calculateFunc : String {get set}
    func updateValue()
}

class View: UIViewController {
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var historyTextView: UITextView!
    @IBOutlet weak var calculatorStackView: UIStackView!
    
    @IBAction func cBtn(_ sender: UIButton) {
        textField.text = ""
    }
    @IBAction func bracketBtn(_ sender: UIButton) {
        
    }
    @IBAction func modBtn(_ sender: UIButton) {
    }
    @IBAction func divideBtn(_ sender: UIButton) {
    }
    @IBAction func multiBtn(_ sender: UIButton) {
    }
    @IBAction func minusBtn(_ sender: UIButton) {
    }
    @IBAction func plusBtn(_ sender: UIButton) {
    }
    @IBAction func resultBtn(_ sender: UIButton) {
    }
    
    /** number Button */
    @IBAction func num0Btn(_ sender: UIButton) {
    }
    @IBAction func num1Btn(_ sender: UIButton) {
    }
    @IBAction func num2Btn(_ sender: UIButton) {
    }
    @IBAction func num3Btn(_ sender: UIButton) {
    }
    @IBAction func num4Btn(_ sender: UIButton) {
    }
    @IBAction func num5Btn(_ sender: UIButton) {
    }
    @IBAction func num6Btn(_ sender: UIButton) {
    }
    @IBAction func num7Btn(_ sender: UIButton) {
    }
    @IBAction func num8Btn(_ sender: UIButton) {
    }
    @IBAction func num9Btn(_ sender: UIButton) {
    }
    
    
    @IBAction func turnPlusMinusBtn(_ sender: UIButton) {
    }
    @IBAction func intToFloatBtn(_ sender: UIButton) {
    }
    
    private var presenter : Presenter?
    
    var selectNumber : Int = 0
    var selectFunction : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate = self
    }

}

extension View : UITextFieldDelegate {
    
}

extension View : ValueUpdate {
    var calculateNumber: Int {
        get {
            return selectNumber
        }
        set {
            self.selectNumber = newValue
        }
    }
    
    var calculateFunc: String {
        get {
            return selectFunction
        }
        set {
            self.calculateFunc = newValue
        }
    }
    
    func updateValue() {
        //
    }
}
