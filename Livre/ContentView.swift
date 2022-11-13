//
//  ContentView.swift
//  Livre
//
//  Created by Louis REY on 13/11/2022.
//

import SwiftUI

let book1 = Book(title: "Las Vegas Parano", author: "Hunter S Thompson", editor: "Rivage Noir", year: 2006, numberPages: 212, loan: false, nameLoan: "Jeanne")

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text(book1.getInfo())
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
