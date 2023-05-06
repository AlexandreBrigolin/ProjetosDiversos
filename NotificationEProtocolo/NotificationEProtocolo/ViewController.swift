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
        configObserver()    }
    
    func configObserver() {
        NotificationCenter.default.addObserver(self, selector: #selector(updateIphone), name: Notification.Name("Iphone"), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(updateMacBook), name: Notification.Name("MacBook"), object: nil)
    }
    
    @objc func updateIphone() {
        print(#function)
        logoImageView.image = UIImage(named: "iphone")
        titleLabel.text = "Iphone 14 pro"
        titleLabel.textColor = .black
        view.backgroundColor = .cyan
    }
    
    @objc func updateMacBook() {
        print(#function)
        logoImageView.image = UIImage(named: "macbook")
        titleLabel.text = "Mac Book pro"
        titleLabel.textColor = .black
        view.backgroundColor = .red
    }
    
    @IBAction func tappedChooseButton(_ sender: UIButton) {
        let vc = UIStoryboard(name: "SelectionViewController", bundle: nil).instantiateViewController(withIdentifier: "SelectionViewController") as? SelectionViewController
        present(vc ?? UIViewController(), animated: true)
    }
    
}

