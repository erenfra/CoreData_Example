//
//  AnimalListView.swift
//  CoreData_Example
//
//  Created by Renato Oliveira Fraga on 1/21/23.
//

import SwiftUI

struct AnimalListView: View {

    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: []) var animals: FetchedResults<Animals>
    
    var animal: String
    var filter: String
    
    var body: some View {
        VStack {
            Text(animal)
                .font(.largeTitle)
                .padding()
            FilteredList(filter: filter)
        }
        
    }
}

struct AnimalListView_Previews: PreviewProvider {
    static var previews: some View {
        AnimalListView(animal: "Dog", filter: "dog")
    }
}
