//
//  ViewController.swift
//  MVPPractice
//
//  Created by 성다연 on 20/03/2020.
//  Copyright © 2020 성다연. All rights reserved.
//

import UIKit


protocol ValueUpdate : class {
    func updateLabel(index: String)
    func updateHistory(index: String)
}

class View: UIViewController, UITextViewDelegate {
    @IBOutlet weak var historyTextView: UITextView!
    @IBOutlet weak var calculatorStackView: UIStackView!
    @IBOutlet weak var label: UILabel!
    
    @IBAction func buttonPressed(_ sender: UIButton){
        presenter!.tagAction(tag: sender.tag)
    }

    private var presenter : PresenterProtocol?
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        historyTextView.isEditable = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
        historyTextView.delegate = self
    }
    
    private func initialize() {
        presenter = Presenter(view: self)
    }
}


extension View : ValueUpdate {
    func updateLabel(index : String) {
        label.text = index
    }
    func updateHistory(index: String) {
        historyTextView.text = index
    }
}
