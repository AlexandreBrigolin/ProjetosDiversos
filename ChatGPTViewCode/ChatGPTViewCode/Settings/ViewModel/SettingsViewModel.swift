//
//  SettingsViewModel.swift
//  ChatGPTViewCode
//
//  Created by Alexandre Brigolin on 14/06/23.
//

import UIKit

protocol SettingsViewModelProtocol: AnyObject {
    func success()
    func error(error:ErrorProfile)
}

class SettingsViewModel {

    var service: SettingsService = SettingsService()
    var person: Person?
    weak var delegate: SettingsViewModelProtocol?
    
    var getName: String {
        return person?.name ?? ""
    }
    
    var getAge: String {
        return "\(person?.age ?? 0) anos."
    }
    
    
    public func feathPerson() {
        service.getPersonFromJson { result in
            switch result {
            case .success(let success):
                self.person = success
                self.delegate?.success()
            case .failure(let failure):
                self.delegate?.error(error: failure)
            }
        }
    }
    
}
