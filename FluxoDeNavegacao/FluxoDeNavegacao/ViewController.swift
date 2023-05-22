//
//  ViewController.swift
//  FluxoDeNavegacao
//
//  Created by Alexandre Brigolin on 22/05/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tappedButton(_ sender: UIButton) {
        performSegue(withIdentifier: "Tela02", sender: nil)
    }
    
    
}

