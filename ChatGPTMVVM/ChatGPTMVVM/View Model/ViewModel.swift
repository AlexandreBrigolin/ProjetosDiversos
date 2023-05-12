//
//  ViewModel.swift
//  ChatGPTMVVM
//
//  Created by Alexandre Brigolin on 11/05/23.
//

import UIKit

class ViewModel {
    
    var listPerson: [Person] = [Person(name: "Alexandre", title: "1"),
                                Person(name: "Marilia", title: "2"),
                                Person(name: "Bárbara", title: "3"),
                                Person(name: "Caio", title: "4"),
                                Person(name: "Abbu", title: "5")]
    
    public var numberOfRowsInSection: Int {
        return listPerson.count
    }
    
    public func loadCurrent(indexPatch: IndexPath) -> Person {
        return listPerson[indexPatch.row]
    }
}
