//
//  main.swift
//  ExerciciosEncapsulamentoPolimorfismo
//
//  Created by Alexandre Brigolin on 17/05/23.
//

import Foundation

class Vendedor {
    var nome: String
    var idade: Int
    var cpf: String
    var saldoEmConta: Double
    
    init(nome: String, idade: Int, cpf: String, saldoEmConta: Double) {
        self.nome = nome
        self.idade = idade
        self.cpf = cpf
        self.saldoEmConta = saldoEmConta
    }
    
    func vender(quantidadeDePecas: Int, tipoDePeca: String) {
        if tipoDePeca == "Terno" {
            venderTerno(quantidadeDeTerno: quantidadeDePecas)
        } else if tipoDePeca == "Vestido" {
            venderVestido(quantidadeDeVestido: quantidadeDePecas)
        } else {
            print("Não tem esse produto na loja!")
        }
    }
    
    private  func venderTerno(quantidadeDeTerno: Int) {
        var desconto: Double = 0
        if quantidadeDeTerno >= 3 {
            desconto = Double(50 * quantidadeDeTerno)
        }
        saldoEmConta = saldoEmConta + Double(quantidadeDeTerno * 400) - desconto
    }
    
    private  func venderVestido(quantidadeDeVestido: Int) {
        if quantidadeDeVestido == 5 {
            print("Parabéns, você ganhou um véu de noiva!")
        }
        saldoEmConta = saldoEmConta + Double(quantidadeDeVestido * 900)
    }
}

var lojaAle: Vendedor = Vendedor(nome: "Alexandre", idade: 28, cpf: "2727636363535", saldoEmConta: 10000)
lojaAle.vender(quantidadeDePecas: 10, tipoDePeca: "Terno")
print(lojaAle.saldoEmConta)

class Funcionario {
    var nome: String
    var salario: Double
    var cpf: String
    
    init(nome: String, salario: Double, cpf: String) {
        self.nome = nome
        self.salario = salario
        self.cpf = cpf
    }
    
    func bonusAnual() {
        print("")
    }
}

class Programador: Funcionario {
    var plataformaDeTrabalho: String
    
    init(plataformaDeTrabalho: String, nome: String, salario: Double, cpf: String){
        self.plataformaDeTrabalho = plataformaDeTrabalho
        super.init(nome: nome, salario: salario, cpf: cpf)
    }
    
    override func bonusAnual() {
        print("Seu bônus é de 20%, sendo assim seu valor do seu bônus é de: R$ \(salario * 12 * 0.2)")
    }
}

class Designer: Funcionario {
    var ferramentaPreferida: String
    
    init(ferramentaPreferida: String, nome: String, salario: Double, cpf: String){
        self.ferramentaPreferida = ferramentaPreferida
        super.init(nome: nome, salario: salario, cpf: cpf)
    }
    
    override func bonusAnual() {
        print("Seu bônus é de 15%, sendo assim seu valor do seu bônus é de: R$ \(salario * 12 * 0.15)")
    }
}

//var xandyProgramador: Programador = Programador(plataformaDeTrabalho: "IOS", nome: "Alexandre", salario: 8000, cpf: "CPF")
//print(xandyProgramador.bonusAnual())

class Veiculo {
    var quantidadePassageiros: Int
    
    init(quantidadePassageiros: Int) {
        self.quantidadePassageiros = quantidadePassageiros
    }
    
    func calcularCombustivel(km: Double) -> Double {
        return km * Double(quantidadePassageiros)
    }
}

class Carro: Veiculo {
    var tamanhoRodas: Int
    
    init(tamanhoRodas: Int, quantidadePassageiros: Int) {
        self.tamanhoRodas = tamanhoRodas
        super.init(quantidadePassageiros: quantidadePassageiros)
    }
    
    override func calcularCombustivel(km: Double) -> Double {
        return km * Double(quantidadePassageiros) * Double(tamanhoRodas)
    }
}
