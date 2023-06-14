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

    
    }
    

 

}
