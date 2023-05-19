//
//  ViewController.swift
//  TextFieldDelegate
//
//  Created by Alexandre Brigolin on 18/05/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.placeholder = "Digite o seu nome:"
        emailTextField.placeholder = "Digite o seu email:"
        self.nameTextField.delegate = self
        self.emailTextField.delegate = self
        nameTextField.layer.borderColor = UIColor.blue.cgColor
    }
}


extension ViewController: UITextFieldDelegate {
    
//    quando o teclado subir esse método será disparado "DidBeginEditing"
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print(#function)
//        textField.layer.borderColor = UIColor.blue.cgColor
//        textField.layer.borderWidth = 1
//        if textField == nameTextField {
//            nameTextField.layer.borderColor = UIColor.orange.cgColor
//            nameTextField.layer.borderWidth = 1
//        } else {
//            emailTextField.layer.borderColor = UIColor.yellow.cgColor
//            emailTextField.layer.borderWidth = 1
//        }
    }
   
//    quando o botão abaixa/some da tela
//    metodo utilizado pra fazer validacoes de campo
//    todas validacoes de campo são feitas dentro do DidEndEditing!
//    ele é diparado logo após o botão return ser disparado.
    func textFieldDidEndEditing(_ textField: UITextField) {
        print(#function)
//        if textField.text == "Alexandre" {
//            textField.layer.borderWidth = 0
//        } else {
//            textField.layer.borderColor = UIColor.red.cgColor
//            textField.layer.borderWidth = 1
//        }
//        if nameTextField.hasText == true && emailTextField.hasText == true{
//            view.backgroundColor = .blue
//        }else {
//            view.backgroundColor = .red
//        }
//        textField.layer.borderWidth = 0
       
        
    }
    
//    quando pressionamos no botão Return ele abaixa!
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print(#function)
        textField.resignFirstResponder()
        return true
    }
}
