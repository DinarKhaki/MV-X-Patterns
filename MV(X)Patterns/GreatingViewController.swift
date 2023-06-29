//
//  ViewController.swift
//  MV(X)Patterns
//
//  Created by Dinar Khakimov on 29.06.2023.
//

import UIKit

class GreatingViewController: UIViewController {
    
    var person: Person!

    @IBOutlet weak var userNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        person = Person(name: "Tim", surname: "Cook")
    }

    @IBAction func buttonPressed(_ sender: Any) {
        userNameLabel.text = ("Hello, \(person.name) \(person.surname) !")
    }
    
}

