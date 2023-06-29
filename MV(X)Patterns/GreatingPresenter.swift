//
//  GreatingPresenter.swift
//  MV(X)Patterns
//
//  Created by Dinar Khakimov on 29.06.2023.
//

import Foundation

protocol GreatingPresenterProtocol {
    init(view: GreatingViewProtocol, person: Person)
    func showGreating()
}

class GreatingPresenter: GreatingPresenterProtocol {
    
    unowned let view: GreatingViewProtocol
    let person: Person
     
    required init(view: GreatingViewProtocol, person: Person) {
        self.view = view
        self.person = person
    }
    
    func showGreating() {
        let greating = "Hello \(person.name) \(person.surname)!"
        view.setGreating(greating)
    }
    
}
