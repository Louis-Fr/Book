//
//  ContentView.swift
//  Livre
//
//  Created by Louis REY on 13/11/2022.
//

import SwiftUI

let book1 = Book(title: "Las Vegas Parano", author: "Hunter S Thompson", editor: "Rivage Noir", year: 2006, numberPages: 212, loan: false, nameLoan: "Jeanne")

let book2 = Book(title: "Sérotonine", author: "Houellbecq", editor: "Flammarion", year: 2019, numberPages: 356, loan: false, nameLoan: "")


struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "book")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text(book2.getInfo()).padding()
            Text(book2.borrow(owner: "Jean")).padding()
            Text(book2.avaible()).padding()
            Text(book2.getNameOwner()).padding()
            Text(book2.returning()).padding()
            Text(book2.avaible()).padding()
            Text(book2.getNameOwner()).padding()
            

            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
