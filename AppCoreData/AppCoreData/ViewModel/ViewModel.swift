//
//  ViewModel.swift
//  AppCoreData
//
//  Created by Alexandre Brigolin on 16/06/23.
//

import UIKit
import CoreData

class ViewModel {
    lazy var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "AppCoreData")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()
    //    minha Entidade Person
    private var createPersonFetchRequest: NSFetchRequest<Person> {
        return NSFetchRequest<Person>(entityName: String(describing: Person.self))
    }
    
    //    meu banco de dados por completo
    private var getItems: [Person] {
        let context = persistentContainer.viewContext
        do {
            let items = try context.fetch(createPersonFetchRequest)
            return items
        } catch {
            print("Deu ruim ao buscar os items")
            return []
        }
    }
    
    public func appendItem(name: String, age: String, completion: (Bool) -> Void) {
        let context = persistentContainer.viewContext
        let newPerson = Person(context: context)
        newPerson.name = name
        newPerson.age = Int64(age) ?? 0
        do {
            try context.save()
            completion(true)
        } catch {
            print("Falha ao adicionar um novo Person")
            completion(false)
        }
        
    }
    
    public var numberOfRowsInSection: Int {
        return getItems.count
    }
    
    public func getPerson(indexPath: IndexPath) -> Person {
        return getItems[indexPath.row]
    }
    
}
