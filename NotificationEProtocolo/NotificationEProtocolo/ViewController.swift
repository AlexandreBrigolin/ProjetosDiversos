//
//  ViewController.swift
//  NotificationEProtocolo
//
//  Created by Alexandre Brigolin on 04/05/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var chooseButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = ""
        chooseButton.layer.cornerRadius = 8
        configObserver()    }
    
    func configObserver() {
        NotificationCenter.default.addObserver(self, selector: #selector(updateIphone), name: .iphone, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(updateMacBook), name: .macbook, object: nil)
    }
    
    @objc func updateIphone() {
        print(#function)
        logoImageView.image = UIImage(named: "iphone")
        logoImageView.clipsToBounds = true
        logoImageView.layer.cornerRadius = 20
        titleLabel.text = "Iphone 14 pro Max"
        titleLabel.textColor = .black
        view.backgroundColor = .cyan
    }
    
    @objc func updateMacBook() {
        print(#function)
        logoImageView.image = UIImage(named: "macbook")
        titleLabel.text = "Mac Book pro M1"
        titleLabel.textColor = .black
        view.backgroundColor = .red
    }
    
    @IBAction func tappedChooseButton(_ sender: UIButton) {
        let vc = UIStoryboard(name: "SelectionViewController", bundle: nil).instantiateViewController(withIdentifier: "SelectionViewController") as? SelectionViewController
        present(vc ?? UIViewController(), animated: true)
    }
    
}

