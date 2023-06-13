//
//  HomeScreen.swift
//  ChatGPTViewCode
//
//  Created by Alexandre Brigolin on 25/05/23.
//

import UIKit

protocol HomeScreenProtocol: AnyObject {
    func sendMessage(text: String)
}

class HomeScreen: UIView {
    
    weak var delegate: HomeScreenProtocol?
    
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .none
        tableView.backgroundColor = .backGraund
        tableView.register(OutgoingTextTableViewCell.self, forCellReuseIdentifier: OutgoingTextTableViewCell.identifier)
        tableView.register(IncomingTextMessageTableViewCell.self, forCellReuseIdentifier: IncomingTextMessageTableViewCell.identifier)
        tableView.transform = CGAffineTransform(scaleX: 1, y: -1)
        return tableView
    }()
    
    lazy var contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .backGraund
        return view
    }()
    
    lazy var subContentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.clipsToBounds = true
        view.layer.cornerRadius = 8
        return view
    }()
    
    lazy var messageTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Digite aqui"
        textField.autocorrectionType = .no
        textField.borderStyle = .none
        textField.delegate = self
        return textField
    }()
    
    lazy var sendButtom: UIButton = {
        let buttom = UIButton()
        buttom.translatesAutoresizingMaskIntoConstraints = false
        buttom.clipsToBounds = true
        buttom.layer.cornerRadius = 8
        buttom.isEnabled = false
        buttom.setImage(UIImage(named: "enviar"), for: .normal)
        buttom.addTarget(self, action: #selector(tappedSendButton), for: .touchUpInside)
        return buttom
    }()
    
    @objc func tappedSendButton() {
        delegate?.sendMessage(text: messageTextField.text ?? "")
        messageTextField.text = ""
        sendButtom.isEnabled = false
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .backGraund
        addElements()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addElements() {
        addSubview(tableView)
        addSubview(contentView)
        contentView.addSubview(subContentView)
        subContentView.addSubview(messageTextField)
        subContentView.addSubview(sendButtom)
    }
    
    public func configTableViewProtocols(delegate: UITableViewDelegate, dataSource: UITableViewDataSource){
        tableView.delegate = delegate
        tableView.dataSource = dataSource
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: contentView.topAnchor),
            
            contentView.bottomAnchor.constraint(equalTo: keyboardLayoutGuide.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: trailingAnchor),
            contentView.heightAnchor.constraint(equalToConstant: 80),
            
            subContentView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            subContentView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            subContentView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            subContentView.heightAnchor.constraint(equalToConstant: 50),
            
            messageTextField.centerYAnchor.constraint(equalTo: subContentView.centerYAnchor),
            messageTextField.trailingAnchor.constraint(equalTo: sendButtom.leadingAnchor, constant: -5),
            messageTextField.leadingAnchor.constraint(equalTo: subContentView.leadingAnchor, constant: 10),
            messageTextField.heightAnchor.constraint(equalToConstant: 40),
            
            sendButtom.heightAnchor.constraint(equalToConstant: 40),
            sendButtom.widthAnchor.constraint(equalToConstant: 40),
            sendButtom.centerYAnchor.constraint(equalTo: subContentView.centerYAnchor, constant: -10),
            sendButtom.trailingAnchor.constraint(equalTo: subContentView.trailingAnchor, constant: -5)
        ])
    }
}

extension HomeScreen: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        guard let text = textField.text as NSString? else { return false }
        let updateText = text.replacingCharacters(in: range, with: string)
        if updateText.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
            sendButtom.isEnabled = false
        }else {
            sendButtom.isEnabled = true
        }
        return true
    }
}
