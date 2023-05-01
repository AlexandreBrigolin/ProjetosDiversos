//
//  main.swift
//  Classe
//
//  Created by Alexandre Brigolin on 01/05/23.
//

import Foundation

//Objeto
//Caracteristicas de um objeto -> Atributos ou Propriedades
//Acoes = funcoes e metodos

class Automovel {
    var portas: Int = 2
    var nome: String = "Porshe"
    var marca: String = "Ferrari"
    
    
    func ligarCarro() {
        print("O carro está ligado!")
    }
    
    func ligarFarol() {
        print("O farol está ligado!")
    }
}

//instanciado a classe, toda vez que instacio uma classe quer dizer que estou dando via a esse objeto!
var meuCarro: Automovel = Automovel()
