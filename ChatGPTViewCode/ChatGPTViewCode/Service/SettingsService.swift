//
//  SettingsService.swift
//  ChatGPTViewCode
//
//  Created by Alexandre Brigolin on 14/06/23.
//

import UIKit

enum ErrorProfile: Swift.Error {
    case fileNotFound(name: String)
    case fileDecodingFailed(name: String, Swift.Error)
    case errorURLRequest(Swift.Error)
    case errorUrl(urlString: String)
    case errorDetail(detail: String)
}


class SettingsService {
    
    private let urlString: String = "https://run.mocky.io/v3/685426ae-3405-4690-91d5-52d8d788acab"
    
    func getPerson(completion: @escaping (Result<Person, ErrorProfile>) -> Void) {
        guard let url = URL(string: urlString) else {
            return completion(.failure(ErrorProfile.errorUrl(urlString: urlString)))
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            DispatchQueue.main.async {
                if let error {
                    return completion(.failure(ErrorProfile.errorURLRequest(error)))
                }
                
                guard let data = data else {
                    return completion(.failure(ErrorProfile.errorDetail(detail: "Error Data")))
                }
                
                do {
                    let person = try JSONDecoder().decode(Person.self, from: data)
                    completion(.success(person))
                } catch {
                    completion(.failure(ErrorProfile.errorURLRequest(error)))
                }
            }
        }.resume()
    }
    
    func getPersonFromJson(completion: (Result<Person, ErrorProfile>) -> Void) {
        if let url = Bundle.main.url(forResource: "person", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let person: Person = try JSONDecoder().decode(Person.self, from: data)
                completion(.success(person))
                print("SUCCESS -> \(#function)")
            }catch {
                completion(.failure(ErrorProfile.fileDecodingFailed(name: "data", error)))
                print("ERROR -> \(#function)")
            }
        }
    }
    
    
    
    
}
