//
//  main.swift
//  Polimorfismo
//
//  Created by Alexandre Brigolin on 16/05/23.
//

import Foundation

//MARK: POLIMORFISMO

class Centauro {
    func totalDesconto(valorTotal: Double) -> Double {
        return valorTotal * 0.3
    }
}

class Loja:Centauro {
    override func totalDesconto(valorTotal: Double) -> Double {
        return valorTotal * 0.1

    }
}

class Loja1:Centauro {

}

var lojaDoXandy: Loja = Loja()
print(lojaDoXandy.totalDesconto(valorTotal: 1000))

var lojaDoCaio: Loja1 = Loja1()
print(lojaDoCaio.totalDesconto(valorTotal: 1000))
