//
//  main.swift
//  Encapsulamento
//
//  Created by Alexandre Brigolin on 17/05/23.
//

import Foundation

//MARK: Encapsulamento

//private = privado, ou seja, que não tem acesso externo
//Public = publico, tem acesso externo

class Carro {
    
    private var modelo: String
    
    init(modelo: String) {
        self.modelo = modelo
    }
    
    public func getModelo () -> String {
        return modelo
    }
    
    public func setModelo(modelo: String) {
        self.modelo = modelo
    }
}

var meuCarro: Carro = Carro(modelo: "BMW 320")
print(meuCarro.getModelo())
meuCarro.setModelo(modelo: "Fusca")
print(meuCarro.getModelo())

