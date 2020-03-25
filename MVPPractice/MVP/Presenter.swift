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
    private let model : Model
    
    init(view: View, model : Model) {
        self.view = view
        self.model = model
    }
    
    func onUpdate(){
    
    }
    
    func onHistory(){
        
    }
}
