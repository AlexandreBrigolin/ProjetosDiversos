//
//  ViewController.swift
//  ChatGPTViewCode
//
//  Created by Alexandre Brigolin on 25/05/23.
//

import UIKit

class HomeViewController: UIViewController {

    var screen: HomeScreen?
    var viewModel: HomeViewModel = HomeViewModel()
    
    override func loadView() {
        screen = HomeScreen()
        view = screen
    }
    
    override func viewWillAppear(_ animated: Bool) {
        addLogoNavigationBarItem(image: UIImage(named: "BF_Logo") ?? UIImage())
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "gearshape.fill"), style: .done, target: self, action: #selector(confgTapped))
        navigationItem.rightBarButtonItem?.tintColor = .white
    }
    
    @objc func confgTapped(){
        let vc: SettingsViewController = SettingsViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.delegate(delegate: self)
        screen?.delegate = self
        self.screen?.configTableViewProtocols(delegate: self, dataSource: self)
    }

}

extension HomeViewController: UITableViewDelegate {  }

extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRowsInSection
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = viewModel.loadCurrentMessage(indexPath: indexPath)
        switch model.typeMessage {
        case .user:
            let cell = tableView.dequeueReusableCell(withIdentifier: OutgoingTextTableViewCell.identifier, for: indexPath) as? OutgoingTextTableViewCell
            cell?.setupCell(message: model.message)
            return cell ?? UITableViewCell()
        case .chatGPT:
            let cell = tableView.dequeueReusableCell(withIdentifier: IncomingTextMessageTableViewCell.identifier, for: indexPath) as? IncomingTextMessageTableViewCell
            cell?.setupCell(message: model.message)
            return cell ?? UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return viewModel.heightForRowAt(indexPath: indexPath)
    }
}

extension HomeViewController: HomeScreenProtocol {
    func sendMessage(text: String) {
        viewModel.fetchMessage(message: text)
        screen?.tableView.reloadData()
    }
}

extension HomeViewController: HomeViewModelProtocol {
    func reloadTableView() {
            self.screen?.tableView.reloadData()
    }
}