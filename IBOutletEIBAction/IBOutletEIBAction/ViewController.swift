//
//  ViewController.swift
//  IBOutletEIBAction
//
//  Created by Alexandre Brigolin on 17/05/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var enterButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "Alexandre"
        enterButton.titleLabel?.text = "Enter"
    }

    @IBAction func tappedButton(_ sender: UIButton) {
        
    }
    
}

