//
//  SettingsViewController.swift
//  ChatGPTViewCode
//
//  Created by Alexandre Brigolin on 14/06/23.
//

import UIKit

class SettingsViewController: UIViewController {

    var screen: SettingsScreen?
    var viewModel: SettingsViewModel = SettingsViewModel()
    
    override func loadView() {
        screen = SettingsScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.delegate = self
        viewModel.feathPerson()
    
    }
    

 

}

extension SettingsViewController: SettingsViewModelProtocol {
    func success() {
        self.screen?.nameLabel.text = viewModel.getName
        self.screen?.ageLabel.text = viewModel.getAge
    }
    
    func error(error: ErrorProfile) {
        print(error)
    }
    
    
}
