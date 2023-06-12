//
//  HomeService.swift
//  ChatGPTViewCode
//
//  Created by Alexandre Brigolin on 05/06/23.
//

import Foundation


//class HomeService {
//    func sendMessage(text: String, completion: @escaping (Result<String, OpenAIError>) -> Void) {
//        OpenAISwift(authToken: "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").sendCompletion(with: text, model: .gpt3(.davinci), maxTokens: 4000) { result in
//            DispatchQueue.main.async {
//                switch result {
//                case .success(let data):
//                    let message: String = data.choices?.first?.text ?? ""
//                    completion(.success(message))
//                case .failure(let failure):
//                    completion(.failure(failure))
//                }
//            }
//        }
//    }
//}
