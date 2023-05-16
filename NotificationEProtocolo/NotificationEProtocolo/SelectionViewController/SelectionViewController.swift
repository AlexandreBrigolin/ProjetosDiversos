//
//  SelectionViewController.swift
//  NotificationEProtocolo
//
//  Created by Alexandre Brigolin on 04/05/23.
//

import UIKit

class SelectionViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var iphoneButton: UIButton!
    @IBOutlet weak var macBookButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configLayout()
    }
    
    public func configLayout() {
        iphoneButton.clipsToBounds = true
        iphoneButton.layer.cornerRadius = 8
        macBookButton.clipsToBounds = true
        macBookButton.layer.cornerRadius = 8
    }
    
    @IBAction func tappedIphoneButton(_ sender: UIButton) {
        NotificationCenter.default.post(name: Notification.Name("Iphone"), object: UIColor.red)
        configLayout()
        dismiss(animated: true)
    }
    
    @IBAction func tappedMacBookButton(_ sender: UIButton) {
        NotificationCenter.default.post(name: Notification.Name("MacBook"), object: nil)
        configLayout()
        dismiss(animated: true)
    }
    
}
