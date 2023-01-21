//
//  FilteredList.swift
//  CoreData_Example
//
//  Created by Renato Oliveira Fraga on 1/21/23.
//
import CoreData
import SwiftUI

struct FilteredList: View {
    @FetchRequest var fetchRequest: FetchedResults<Animals>
    
    var body: some View {
        Text("Number of Animals: \(fetchRequest.count)")
        List {
            ForEach(fetchRequest, id: \.self) { animals in
                VStack {
                    Text("\(animals.name ?? "Unknown")")
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .topLeading)
                        .lineLimit(1)
                    Text("Age: \(animals.age)")
                        .font(.headline)
                        .foregroundColor(.gray)
                        .frame(maxWidth: .infinity, alignment: .bottomLeading)
                }
                
            }
        }
    }
    
    init(filter: String) {
        _fetchRequest = FetchRequest<Animals>(sortDescriptors: [SortDescriptor(\.name)], predicate: NSPredicate(format: "animal == %@", filter))
    }
}

