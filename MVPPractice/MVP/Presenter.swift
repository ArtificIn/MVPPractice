//
//  Presenter.swift
//  MVPPractice
//
//  Created by 성다연 on 20/03/2020.
//  Copyright © 2020 성다연. All rights reserved.
//

import Foundation

protocol PresenterProtocol : class {
    func tagAction(tag: Int)
}

class Presenter : PresenterProtocol {
    private let view : ValueUpdate
    private var model = Model(number: 0, history: "" )
    
    init(view: View) {
        self.view = view
    }
}

extension Presenter {
    func tagAction(tag: Int){
        switch tag {
        case 0...9:
            model.history.append(String(tag))
            view.updateLabel(index: model.history)
        case 10:
            model.history.append("+")
            view.updateLabel(index: model.history)
        case 11:
            model.history.append("-")
            view.updateLabel(index: model.history)
        case 12:
            model.history.append("*")
            view.updateLabel(index: model.history)
        case 13:
            model.history.append("/")
            view.updateLabel(index: model.history)
        case 14:
            model.history.append("%")
            view.updateLabel(index: model.history)
        case 15:
            model.history.append(".")
            view.updateLabel(index: model.history)
        case 16:
            model.history.removeLast()
            view.updateLabel(index: model.history)
        case 17:
            let expression = NSExpression(format: model.history)
            let result = expression.expressionValue(with: nil, context: nil) ?? 0
            model.number = result as! Int
            print("result = \(result)")
            view.updateHistory(index: String(model.number))
        default:
            fatalError("Unknown button tag")
        }
    }
}
