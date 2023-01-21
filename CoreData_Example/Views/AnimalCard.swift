//
//  AnimalCard.swift
//  CoreData_Example
//
//  Created by Renato Oliveira Fraga on 1/21/23.
//

import SwiftUI

struct AnimalCard: View {
    var animal: String
    var number: Int

    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            ZStack {
                Image(animal)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 140, height: 140)
                    .cornerRadius(20)
                    .shadow(color: .secondary, radius: 5, x: 0, y: 1)
            }
            if number != 0 {
                Text(String(number))
                    .font(.title2)
                    .frame(width: 20, height: 20)
                    .padding(5)
                    .foregroundColor(.white)
                    .background(.red)
                    .cornerRadius(50)
                    .offset(x: 10, y: -10)
            }
        }
    }
    
}

struct AnimalCard_Previews: PreviewProvider {
    static var previews: some View {
        AnimalCard(animal: "Dog", number: 2)
    }
}
