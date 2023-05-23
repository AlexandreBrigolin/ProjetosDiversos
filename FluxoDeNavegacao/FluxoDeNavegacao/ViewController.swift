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
//ir pra proxima tela atravaes da main
//        performSegue(withIdentifier: "Tela02", sender: nil)
        
        let vc: Tela02ViewController? = UIStoryboard(name: "Tela02ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela02ViewController") as? Tela02ViewController
        present(vc ?? UIViewController(), animated: true)
    }
    
    
}

