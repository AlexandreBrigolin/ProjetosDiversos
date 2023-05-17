//
//  ViewController.swift
//  PrimeiroProjetoViewCode
//
//  Created by Alexandre Brigolin on 16/05/23.
//

import UIKit

class LoginViewController: UIViewController {
    
    var screen: LoginScreen?
    
    override func loadView() {
        screen = LoginScreen()
        self.view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
}


}

