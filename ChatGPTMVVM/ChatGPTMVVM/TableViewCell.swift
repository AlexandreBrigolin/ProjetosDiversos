//
//  TableViewCell.swift
//  ChatGPTMVVM
//
//  Created by Alexandre Brigolin on 11/05/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    static let identifier: String = "TableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: TableViewCell.identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    public func setupCell(data: Person){
        self.nameLabel.text = data.name
        self.titleLabel.text = data.title
    }


    
}
