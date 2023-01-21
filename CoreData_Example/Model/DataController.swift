//
//  DataController.swift
//  CoreData_Example
//
//  Created by Renato Oliveira Fraga on 1/21/23.
//

import CoreData
import Foundation


class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "AnimalsData")
    
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core Data failed to load: \(error.localizedDescription)")
            }
        }
    }

}
