//
//  main.swift
//  Heranca
//
//  Created by Alexandre Brigolin on 16/05/23.
//

import Foundation

//MARK: - Herança

//Classe pai/ Super Classe

// CLASSE MAIS GERERICA OU CLASSE QIE CONTENHA ALGO QUE POSSA SER REAPROVEIRADONAS CLASSES FILHAS SUB CLASS


class Animal {
    
    var idade: Int = 10
    
    func comer() {
        print("O animal está comendo!")
    }
}

class Cavalo: Animal {
    
}

class Boi: Animal {
    
}

class Ovelha: Animal {
    
}

// Class filha -> Sub class
//A classe filha contem tudo o que a classe pai contem, tanto caracteristica como acoes
var meuCavalo:Cavalo = Cavalo()
meuCavalo.comer()

//Classe pai
class Pessoa {
    var nome: String
    
    init(nome: String) {
        self.nome = nome
    }
}

// super.init só vai ser usado quando a classe pai tiver um contrutor.

class Alexandre: Pessoa {
    var altura: Double
    
    init(altura: Double, nome: String) {
        self.altura = altura
        super.init(nome: nome)
    }
}

var meuNome: Alexandre = Alexandre(altura: 1.82, nome: "Alex")
print(meuNome.nome)
print(meuNome.altura)

//DESAFIO

//criar uma classe pai na qual tenha 3 caracteristicas e 2 acoes
//criar duas classes filhas distintas, porem ambas vao herdar da classe pai(super). Cada classe filha terá 3 caracteristicas especificas
//A classe pai tera cpnstrutores para setar seu valor.
//uma das classes filhas nao deveconter construtor.
//uma das classes filhas  deve conter construtor indicando os valores de todas as suas propriedades.

class Tecnologia {
    var wifi: Bool
    var tela: Bool
    var teclado: String
    
    init(wifi: Bool, tela: Bool, teclado: String) {
        self.wifi = wifi
        self.tela = tela
        self.teclado = teclado
    }
    
    func conectarPessoas() {
        print("A tecnologia está conectando pessoas.")
    }
    
    func ajudarPessoas() {
        print("A tecnologia pessoas.")
    }
}

class Celular: Tecnologia {
    var marca: String
    var modelo: String
    var ano: Int
    
    init(marca: String, modelo: String, ano: Int,wifi: Bool, tela: Bool, teclado: String) {
        self.marca = marca
        self.modelo = modelo
        self.ano = ano
        super.init(wifi: wifi, tela: tela, teclado: teclado)
    }
    
}

class Mac: Tecnologia {
    var marca: String = "Apple"
    var modelo: String = "MacBook Pro"
    var ano: Int = 2021

}

var meuCelular: Celular = Celular(marca: "Aplle", modelo: "Iphone 13", ano: 2020, wifi: true, tela: true, teclado: "Brasil")
