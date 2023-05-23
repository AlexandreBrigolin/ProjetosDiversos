//
//  Tela02ViewController.swift
//  FluxoDeNavegacao
//
//  Created by Alexandre Brigolin on 22/05/23.
//

import UIKit

class Tela02ViewController: UIViewController {

    
//    override func viewWillAppear(_ animated: Bool) {
//        navigationController?.navigationBar.isHidden = true
//    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        title = "Tela02"
    }
    
    @IBAction func tappedTela03(_ sender: UIButton) {
        let vc: Tela03ViewController? = UIStoryboard(name: "Tela03ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela03ViewController") as? Tela03ViewController
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    }
}
