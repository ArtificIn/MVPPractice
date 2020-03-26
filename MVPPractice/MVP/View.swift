//
//  ViewController.swift
//  MVPPractice
//
//  Created by 성다연 on 20/03/2020.
//  Copyright © 2020 성다연. All rights reserved.
//

import UIKit


protocol ValueUpdate : class {
    func updateValueString(value: String)
    func updateValueInt(value : Int)
    func updateHistory(value: Model)
}

class View: UIViewController {
    @IBOutlet weak var historyTextView: UITextView!
    @IBOutlet weak var calculatorStackView: UIStackView!
    @IBOutlet weak var label: UILabel!
    
    @IBAction func cBtn(_ sender: UIButton) {
        label.text = ""
    }
    @IBAction func bracketBtn(_ sender: UIButton) {
        
    }
    @IBAction func modBtn(_ sender: UIButton) {
        presenter?.ActionModMethod()
    }
    @IBAction func divideBtn(_ sender: UIButton) {
        presenter?.ActionDivideMethod()
    }
    @IBAction func multiBtn(_ sender: UIButton) {
        presenter?.ActionMultipleMethod()
    }
    @IBAction func minusBtn(_ sender: UIButton) {
        presenter?.ActionMinusMethod()
    }
    @IBAction func plusBtn(_ sender: UIButton) {
        presenter?.ActionPlusMethod()
    }
    @IBAction func resultBtn(_ sender: UIButton) {
        presenter?.ActionResultMethod()
    }
    
    /** number Button */
    @IBAction func num0Btn(_ sender: UIButton) {
        presenter?.ActionNumberMethod(num: 0)
    }
    @IBAction func num1Btn(_ sender: UIButton) {
        presenter?.ActionNumberMethod(num: 1)
    }
    @IBAction func num2Btn(_ sender: UIButton) {
        presenter?.ActionNumberMethod(num: 2)
    }
    @IBAction func num3Btn(_ sender: UIButton) {
        presenter?.ActionNumberMethod(num: 3)
    }
    @IBAction func num4Btn(_ sender: UIButton) {
        presenter?.ActionNumberMethod(num: 4)
    }
    @IBAction func num5Btn(_ sender: UIButton) {
        presenter?.ActionNumberMethod(num: 5)
    }
    @IBAction func num6Btn(_ sender: UIButton) {
        presenter?.ActionNumberMethod(num: 6)
    }
    @IBAction func num7Btn(_ sender: UIButton) {
        presenter?.ActionNumberMethod(num: 7)
    }
    @IBAction func num8Btn(_ sender: UIButton) {
        presenter?.ActionNumberMethod(num: 8)
    }
    @IBAction func num9Btn(_ sender: UIButton) {
        presenter?.ActionNumberMethod(num: 9)
    }
    
    
    @IBAction func turnPlusMinusBtn(_ sender: UIButton) {
        
    }
    @IBAction func intToFloatBtn(_ sender: UIButton) {
        
    }
    
    private var presenter : Presenter?
    private var model : Model!
    private var inputValue : String = ""
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
        historyTextView.delegate = self
    }
    
    private func initialize() {
        model = Model(number: 0, history: "")
        presenter = Presenter(view: self, model: model)
    }
}

extension View : UITextViewDelegate {
    
}

extension View : ValueUpdate {
    func updateValueString(value : String) {
        model.history += value
        label.text = model.history
    }
    func updateValueInt(value : Int){
        model.history += String(value)
        label.text = model.history
    }
    func updateHistory(value: Model){
        label.text = ""
        historyTextView.text = model.history
    }
}
