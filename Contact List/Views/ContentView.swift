//
//  ContentView.swift
//  Contact List
//
//  Created by Igor on 13.11.2021.
//

import SwiftUI

struct ContentView: View {
    let persons = Person.generatePersons()

    var body: some View {
        TabView {
            ContactsView(persons: persons)
                .tabItem {
                    Image(systemName: "person.3.fill")
                    Text("Contacts")
                }
            NumbersView(persons: persons)
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
