//
//  CoreData_ExampleApp.swift
//  CoreData_Example
//
//  Created by Renato Oliveira Fraga on 1/21/23.
//

import SwiftUI

@main
struct CoreData_ExampleApp: App {
    @StateObject private var dataControler = DataController()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataControler.container.viewContext)
        }
    }
}
