//
//  Tela02ViewController.swift
//  TransitandoDadosEntreTelas
//
//  Created by Alexandre Brigolin on 23/05/23.
//

import UIKit

class Tela02ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
//    var name: String?
    
    let name: String
    
    init?(coder: NSCoder, name: String) {
        self.name = name
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = name
    }
    


}
