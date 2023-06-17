//
//  CustomTableViewCell.swift
//  AppCoreData
//
//  Created by Alexandre Brigolin on 15/06/23.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    static let identifier: String = String(describing: CustomTableViewCell.self)

    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    public func setupCell(data: Person){
        nameLabel.text = data.name
        ageLabel.text = String(data.age)
    }
    
    
}
