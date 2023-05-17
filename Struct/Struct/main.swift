//
//  main.swift
//  Struct
//
//  Created by Alexandre Brigolin on 17/05/23.
//

import Foundation

// Uma Struct é muito similar a uma Classe, porém uma struct trabalha com value type, já a class com reference type
// Uma Struct não trabalha com herança, apenas pode estar em conformidade com os protocols
// Na struct não necessita de criar o construtor na mão, ele cria automatico.

struct Pessoa {
    var nome: String
    var idade: Int
    
    init(nome: String, idade: Int) {
        self.nome = nome
        self.idade = idade
    }
}

var ale: Pessoa = Pessoa(nome: "Alexandre", idade: 28)
var caio: Pessoa = Pessoa(nome: "Caio", idade: 21)


ale = caio

caio.nome = "Luis"

print(caio.nome)
print(ale.nome)
