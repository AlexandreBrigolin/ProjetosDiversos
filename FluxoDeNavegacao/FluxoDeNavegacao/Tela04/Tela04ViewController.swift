//
//  Tela04ViewController.swift
//  FluxoDeNavegacao
//
//  Created by Alexandre Brigolin on 23/05/23.
//

import UIKit

class Tela04ViewController: UIViewController {
    
//    override func viewWillAppear(_ animated: Bool) {
//        navigationController?.navigationBar.isHidden = true
//    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Tela04"
    }
    
    // MARK: popToRootViewController, ele volta pra tela de inicio utilizando navigation

    @IBAction func tappedDismiss(_ sender: UIButton) {
        navigationController?.popToRootViewController(animated: true)
    }
    

}
