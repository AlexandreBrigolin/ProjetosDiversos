//
//  Model.swift
//  ChatGPTViewCode
//
//  Created by Alexandre Brigolin on 01/06/23.
//

import Foundation


enum TypeMessage {
    case user
    case chatGPT
}

struct Message {
    var message: String
    var typeMessage: TypeMessage
}
