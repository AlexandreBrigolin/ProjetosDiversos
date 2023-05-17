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
        return label
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
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
        
            self.loginLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 20),
            self.loginLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor)
            
        ])
    }
    
}
