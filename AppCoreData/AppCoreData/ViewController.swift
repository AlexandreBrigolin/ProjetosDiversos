//
//  ViewController.swift
//  AppCoreData
//
//  Created by Alexandre Brigolin on 15/06/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var deleteButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()

    }
    
    private func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
    }

    @IBAction func tappedAddButton(_ sender: UIButton) {
        
    }
    
    @IBAction func tappedDeleteButton(_ sender: UIButton) {
        
    }
    
}

extension UIViewController: UITableViewDelegate { }

extension UIViewController: UITableViewDataSource {
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    
}
