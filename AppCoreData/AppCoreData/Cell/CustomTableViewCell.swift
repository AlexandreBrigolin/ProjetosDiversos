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
    
    static let identifier: String = "CustomTableViewCell"
    
    public func nib() -> UINib {
        return UINib(nibName: CustomTableViewCell.identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    
    
}
