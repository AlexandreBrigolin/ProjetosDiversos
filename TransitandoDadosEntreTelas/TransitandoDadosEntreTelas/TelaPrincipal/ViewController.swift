//
//  ViewController.swift
//  TransitandoDadosEntreTelas
//
//  Created by Alexandre Brigolin on 23/05/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .darkGray
    }


    @IBAction func tappedEnterButton(_ sender: UIButton) {
        let vc: Tela02ViewController? = UIStoryboard(name: "Tela02ViewController", bundle: nil).instantiateViewController(identifier: "Tela02ViewController") { coder -> Tela02ViewController? in
            return Tela02ViewController(coder: coder, name: self.nameTextField.text ?? "")
        }
        vc?.modalPresentationStyle = .formSheet
//        vc?.name = nameTextField.text ?? ""
        present(vc ?? UIViewController() , animated: true)
          
        }
    }




