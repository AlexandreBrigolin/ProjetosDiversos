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

//instanciado a classe, toda vez que instacio uma classe quer dizer que estou dando vida a esse objeto!
var meuCarro: Automovel = Automovel()

//criando classe de maneira dinamica, atravez de construtores

class Pessoa {
    
    var nome: String
    var peso: Double
    var altura: Double
    
    init(nome: String, peso: Double, altura: Double) {
        self.nome = nome
        self.peso = peso
        self.altura = altura
    }
}

var xandy: Pessoa = Pessoa(nome: "Alexandre Brigolin", peso: 80, altura: 1.82)
var mari: Pessoa = Pessoa(nome: "Mariana Lima", peso: 60, altura: 1.70)

print(xandy.nome)
print(mari.nome)

//reference type -> uma das principais característica de uma classe
// a partir da linha 55 estmamos dizendo que temos uma unica referencia!
xandy = mari

print(xandy.nome)
print(mari.nome)

xandy.nome = "Alex"

print(xandy.nome)
print(mari.nome)

mari.nome = "Vera"

print(xandy.nome)
print(mari.nome)

//Concatenação = é quando estamos juntando textos

var frase1: String = "Recebi promoção no trabalho e o meu aumento foi de:"
var frase2: String = " Reais$"
var valor: Int = 1500

var fraseCompleta: String = frase1 + String(valor) + frase2
print(fraseCompleta)

//Interpolação = ele sempre vai converter pra string tudo oque estiver dentro do \().

var fraseCompletaInterpolacao: String = "O valor da minha promoçao foi de: \(valor)"
print(fraseCompletaInterpolacao
)
