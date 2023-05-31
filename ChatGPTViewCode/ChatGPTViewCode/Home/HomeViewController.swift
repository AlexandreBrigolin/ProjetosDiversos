//
//  ViewController.swift
//  ChatGPTViewCode
//
//  Created by Alexandre Brigolin on 25/05/23.
//

import UIKit

class HomeViewController: UIViewController {

    var screen: HomeScreen?
    
    override func loadView() {
        screen = HomeScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.screen?.configTableViewProtocols(delegate: self, dataSource: self)
    }


}

extension HomeViewController: UITableViewDelegate {  }

extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: OutgoingTextTableViewCell.identifier, for: indexPath) as? OutgoingTextTableViewCell
        
        return cell ?? UITableViewCell()
    }
    
    
}
