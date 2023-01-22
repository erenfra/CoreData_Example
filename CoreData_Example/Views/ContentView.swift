//
//  ContentView.swift
//  CoreData_Example
//
//  Created by Renato Oliveira Fraga on 1/21/23.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: []) var animals: FetchedResults<Animals>
    
    var body: some View {
        NavigationStack {
            VStack {
                    VStack(spacing: 40) {
                        Text("Animal Shelter")
                            .font(.largeTitle.bold())
                        NavigationLink(destination: {
                            AnimalListView(animal: "Dog", filter: "dog")
                        }, label: {
                            AnimalCard(animal: "Dog", number: animals.filter { $0.animal == "dog"}.count)
                        })
                        NavigationLink(destination: {
                            AnimalListView(animal: "Cat", filter: "cat")
                        }, label: {
                            AnimalCard(animal: "Cat", number: animals.filter { $0.animal == "cat"}.count)
                        })
                        NavigationLink(destination: {
                            AnimalListView(animal: "Bird", filter: "bird")
                        }, label: {
                            AnimalCard(animal: "Bird", number: animals.filter { $0.animal == "bird"}.count)
                        })
                    }
                    Spacer()
                // Loading Sample Data
                    Button(action: {
                        let coco = Animals(context: moc)
                        coco.name = "Coco"
                        coco.animal = "dog"
                        coco.age = Int16(11)
                        
                        let brani = Animals(context: moc)
                        brani.name = "Brani"
                        brani.animal = "dog"
                        brani.age = Int16(7)
                        
                        let hercules = Animals(context: moc)
                        hercules.name = "Hercules"
                        hercules.animal = "dog"
                        hercules.age = Int16(4)
                        
                        let garfield = Animals(context: moc)
                        garfield.name = "Garfield"
                        garfield.animal = "cat"
                        garfield.age = Int16(2)
                        
                        let gina = Animals(context: moc)
                        gina.name = "Gina"
                        gina.animal = "cat"
                        gina.age = Int16(3)
                        
                        let mira = Animals(context: moc)
                        mira.name = "Mira"
                        mira.animal = "bird"
                        mira.age = Int16(1)
                                                
                        try? moc.save()
                        
                    }, label: {
                        Text("Load Data")
                    })
                    Spacer()
                }
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
