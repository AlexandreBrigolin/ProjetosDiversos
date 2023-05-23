//
//  Tela03ViewController.swift
//  FluxoDeNavegacao
//
//  Created by Alexandre Brigolin on 23/05/23.
//

import UIKit

class Tela03ViewController: UIViewController {
    
//    override func viewWillAppear(_ animated: Bool) {
//        navigationController?.navigationBar.isHidden = true
//    }

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Tela03"
        
    }
    
    @IBAction func tappedProximaTelaButton(_ sender: UIButton) {
        let vc: Tela04ViewController? = UIStoryboard(name: "Tela04ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela04ViewController") as? Tela04ViewController
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    
    }
    // MARK: Ir pra tela da frente
    
    // MARK: O present, ele abre uma modal
    // MARK: O pushViewController, ele vai pra proxima tela utilizando navigation
    
    // MARK: Voltar a tela anterior
   
    
    // MARK: O dismis, ele volta a tela quando a navegação for uma modal
    // MARK: O popViewController, ele volta a tela quando a navegação for navigation
    
    @IBAction func tappedBackButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
}
