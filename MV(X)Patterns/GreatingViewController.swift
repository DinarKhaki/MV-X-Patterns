//
//  ViewController.swift
//  MV(X)Patterns
//
//  Created by Dinar Khakimov on 29.06.2023.
//

import UIKit

class GreatingViewController: UIViewController {
    
    let a = 7
    
    private var person: Person!
    
    @IBOutlet weak var GreatingLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        person = Person(name: "Tim", surname: "Cook")
    }

    @IBAction func GreatingButtonAction(_ sender: Any) {
        GreatingLabel.text = ("Hello \(person.name) \(person.surname) !")
    }
    
    
    
}

