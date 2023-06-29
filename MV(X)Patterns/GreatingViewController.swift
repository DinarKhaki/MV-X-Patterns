//
//  ViewController.swift
//  MV(X)Patterns
//
//  Created by Dinar Khakimov on 29.06.2023.
//

import UIKit

protocol GreatingViewProtocol: AnyObject {
    func setGreating(_ greating: String)
}

class GreatingViewController: UIViewController {
    
    var person: Person!
    
    private var presenter: GreatingPresenterProtocol!

    @IBOutlet weak var userNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        person = Person(name: "Tim", surname: "Cook")
        presenter = GreatingPresenter(view: self, person: person)
    }

    @IBAction func buttonPressed(_ sender: Any) {
        presenter.showGreating()
    }
}

extension GreatingViewController: GreatingViewProtocol {
    func setGreating(_ greating: String) {
        userNameLabel.text = greating
    }
    
    
}

