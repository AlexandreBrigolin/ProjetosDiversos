//
//  LoginScreen.swift
//  PrimeiroProjetoViewCode
//
//  Created by Alexandre Brigolin on 16/05/23.
//

import UIKit

class LoginScreen: UIView {

    lazy var loginLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Login"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 30)
        return label
    }()
    
    lazy var nameTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.autocorrectionType = .no
        tf.placeholder = " Digite seu nome:"
        tf.backgroundColor = .white
        tf.clipsToBounds = true
        tf.layer.cornerRadius = 5
        
        return tf
    }()
    
    lazy var emailTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.autocorrectionType = .no
        tf.placeholder = " Digite seu email:"
        tf.backgroundColor = .white
        tf.clipsToBounds = true
        tf.layer.cornerRadius = 5
        return tf
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Entrar", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        button.backgroundColor = .lightGray
        button.clipsToBounds = true
        button.layer.cornerRadius = 5
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubView()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addSubView() {
        backgroundColor = .blue
        addSubview(loginLabel)
        addSubview(nameTextField)
        addSubview(emailTextField)
        addSubview(loginButton)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
        
            self.loginLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 20),
            self.loginLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            self.nameTextField.topAnchor.constraint(equalTo: self.loginLabel.bottomAnchor, constant: 20),
            self.nameTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            self.nameTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            self.nameTextField.heightAnchor.constraint(equalToConstant: 40),
            
            self.emailTextField.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 10),
            self.emailTextField.leadingAnchor.constraint(equalTo: nameTextField.leadingAnchor),
            self.emailTextField.trailingAnchor.constraint(equalTo: nameTextField.trailingAnchor),
            self.emailTextField.heightAnchor.constraint(equalToConstant: 40),
            
            self.loginButton.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 20),
            self.loginButton.leadingAnchor.constraint(equalTo: emailTextField.leadingAnchor),
            self.loginButton.trailingAnchor.constraint(equalTo: emailTextField.trailingAnchor),
            self.loginButton.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
}
