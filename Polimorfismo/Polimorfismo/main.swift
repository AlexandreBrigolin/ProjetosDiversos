//
//  main.swift
//  Polimorfismo
//
//  Created by Alexandre Brigolin on 16/05/23.
//

import Foundation

//MARK: POLIMORFISMO

class Centauro {
    func calculadora(valortotal: Double) -> Double {
        return valortotal * 0.3
    }
}

class Loja: Centauro {
    
}

var lojaDoXandy: Loja = Loja()

print(lojaDoXandy.calculadora(valortotal: 1000))
