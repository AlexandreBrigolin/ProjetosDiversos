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
    @IBOutlet weak var registerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboardWhenTappedAraund()
        configTextField()
        self.nameTextField.delegate = self
        self.emailTextField.delegate = self
        
    }
    
    @IBAction func tappedRegisterButton(_ sender: UIButton) {
        print("Cadastro realizado com sucesso!!")
    }
    
    func configTextField() {
        nameTextField.placeholder = "Digite o seu nome:"
        emailTextField.placeholder = "Digite o seu email:"
        registerButton.setTitle("Cadastrar" , for: .normal)
        registerButton.isEnabled = false
        registerButton.tintColor = .black
        registerButton.backgroundColor = .white
        registerButton.clipsToBounds = true
        registerButton.layer.cornerRadius = 5
    }
    
    func validateTextField() {
        if nameTextField.hasText && emailTextField.hasText {
            registerButton.isEnabled = true
        } else {
            registerButton.isEnabled = false
        }
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
//    metodo utilizado pra fazer validacoes de campo!
//    Todas validacoes de campo são feitas dentro do DidEndEditing!
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
        
        if !textField.hasText {
            textField.layer.borderColor = UIColor.red.cgColor
            textField.layer.borderWidth = 3
        } else {
            textField.layer.borderColor = UIColor.blue.cgColor
            textField.layer.borderWidth = 3
        }
        validateTextField()
    }
    
//    quando pressionamos no botão Return ele abaixa!
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print(#function)
        textField.resignFirstResponder()
        return true
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if textField == emailTextField {
            if let text = textField.text as? NSString {
                let updateText = text.replacingCharacters(in: range, with: string)
                print("Novo texto ===> \(updateText)")
            }
        }
        return true
    }
}

