//
//  ViewController.swift
//  TextFieldDelegate
//
//  Created by Alexandre Brigolin on 18/05/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.placeholder = "Digite o seu nome:"
        self.nameTextField.delegate = self
        nameTextField.layer.borderColor = UIColor.blue.cgColor
    }
}


extension ViewController: UITextFieldDelegate {
    
//    quando o teclado subir esse método será disparado "DidBeginEditing"
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print(#function)
        textField.layer.borderColor = UIColor.blue.cgColor
        textField.layer.borderWidth = 1
    }
   
//    quando o botão abaixa/some da tela
//    metodo utilizado pra fazer validacoes de campo
//    todas validacoes de campo são feitas dentro do DidEndEditing!
//    ele é diparado logo após o botão return ser disparado.
    func textFieldDidEndEditing(_ textField: UITextField) {
        print(#function)
        if textField.text == "Alexandre" {
            textField.layer.borderWidth = 0
        } else {
            textField.layer.borderColor = UIColor.red.cgColor
            textField.layer.borderWidth = 1
        }
    }
    
//    quando pressionamos no botão Return ele abaixa!
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print(#function)
        textField.resignFirstResponder()
        return true
    }
}
