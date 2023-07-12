//
//  ViewController.swift
//  ProjetoAcessibiliodade
//
//  Created by Alexandre Brigolin on 10/07/23.
//

import UIKit

class ViewController: UIViewController {
    
    var screen: ScreenViewController?
    
    override func loadView() {
        screen = ScreenViewController()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
        configAcessibility()
    }
    
    private func configAcessibility() {
        
        //  isAccessibilityElement -> Ele possibilita a leitura da acessibilidade
        
        screen?.positionOneLabel.isAccessibilityElement = true
        screen?.positionTwoLabel.isAccessibilityElement = true
        screen?.positionThreeLabel.isAccessibilityElement = true
        screen?.positionFourLabel.isAccessibilityElement = true
        screen?.positionFiveLabel.isAccessibilityElement = true
        
        //   accessibilityLabel -> é o que o VoiceOver irá falar quando o cursor estiver no elemento
        
        screen?.positionOneLabel.accessibilityLabel = "Posição um"
        screen?.positionTwoLabel.accessibilityLabel = "Posição dois"
        screen?.positionThreeLabel.accessibilityLabel = "Posição três"
        screen?.positionFourLabel.accessibilityLabel = "Posição quatro"
        screen?.positionFiveLabel.accessibilityLabel = "Posição cinco"
        
        
        screen?.positionOneLabel.accessibilityTraits = .staticText
        screen?.positionTwoLabel.accessibilityTraits = .staticText
        screen?.positionThreeLabel.accessibilityTraits = .staticText
        screen?.positionFourLabel.accessibilityTraits = .staticText
        screen?.positionFiveLabel.accessibilityTraits = .staticText
        
        screen?.loginButton.accessibilityTraits = .button
        screen?.titleLabel.accessibilityTraits = .header
        
        guard let primeiro = screen?.positionOneLabel,
              let segundo = screen?.positionTwoLabel,
              let terceiro = screen?.positionThreeLabel,
              let quarto = screen?.positionFourLabel,
              let quinto = screen?.positionFiveLabel,
              let button = screen?.loginButton,
              let title = screen?.titleLabel else { return }
        
        //        accessibilityElements -> ele ordena os elementos acessíveis
        
        view.accessibilityElements = [primeiro, segundo, terceiro, quarto, quinto, button, title]
        
    }
}

extension ViewController: ScreenViewControllerProtocol {
    func tappedLoginButton() {
//        UIAccessibility.post(notification: .announcement, argument: "Teste o botão foi presionado.")
        UIAccessibility.post(notification: .screenChanged, argument: screen?.positionFiveLabel)

    }
}
