//
//  UIViewController+Extension.swift
//  TextFieldDelegate
//
//  Created by Alexandre Brigolin on 21/05/23.
//

import Foundation
import UIKit

extension UIViewController {
    public func hideKeyboardWhenTappedAraund() {
        let tap: UIGestureRecognizer = UIGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc private func dismissKeyboard() {
        view.endEditing(true)
    }
}
