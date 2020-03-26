//
//  Presenter.swift
//  MVPPractice
//
//  Created by 성다연 on 20/03/2020.
//  Copyright © 2020 성다연. All rights reserved.
//

import Foundation

class Presenter {
    private let view : ValueUpdate
    private var model : Model
    
    init(view: View, model : Model) {
        self.view = view
        self.model = model
    }
}

extension Presenter {
    func ActionNumberMethod(num : Float){
        print("presenter end")
        model.number = num
        view.updateValueString(value: String(num))
    }
    func ActionResultMethod(){
        
    }
    func ActionPlusMethod(){
        view.updateValueString(value: "+")
    }
    func ActionMinusMethod(){
        view.updateValueString(value: "-")
    }
    func ActionMultipleMethod(){
        view.updateValueString(value: "x")
    }
    func ActionDivideMethod(){
        view.updateValueString(value: "/")
    }
    func ActionModMethod(){
        view.updateValueString(value: "%")
    }
    func ActionBracketMethod(){
        
    }
    func ActionTurnMethod(){
        
    }
    func ActionFloatMethod(){
        
    }
    
    func calculator(value1: Float, value2: Float, index: String) -> Float{
        var result : Float = 0.0
        switch index {
        case "+":
            result = value1 + value2
            break
        case "-":
            result = value1 - value2
            break
        case "/":
            result = value1 / value2
            break
        case "%":
//            result = value1 % value2
            break
        default:
            print("calculate")
        }
        return result
    }
}
