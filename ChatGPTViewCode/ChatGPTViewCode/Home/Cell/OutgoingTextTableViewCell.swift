//
//  OutgoingTextTableViewCell.swift
//  ChatGPTViewCode
//
//  Created by Alexandre Brigolin on 30/05/23.
//

import UIKit

class OutgoingTextTableViewCell: UITableViewCell {

    static let identifier: String = String(describing: OutgoingTextTableViewCell.self)
    
    lazy var messageView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .yellow
        view.clipsToBounds = true
        view.layer.cornerRadius = 10
        view.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMinXMinYCorner, .layerMaxXMinYCorner]
        return view
    }()
    
    lazy var messageLablel: UILabel = {
      let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = .backGraund
        selectionStyle = .none
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            messageView.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            messageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            messageView.widthAnchor.constraint(lessThanOrEqualToConstant: 250),
            
            messageLablel.topAnchor.constraint(equalTo: <#T##NSLayoutAnchor<NSLayoutYAxisAnchor>#>, constant: <#T##CGFloat#>),

          
            
        ])
    }
    
}
