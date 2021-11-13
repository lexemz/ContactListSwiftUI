//
//  NumbersView.swift
//  Contact List
//
//  Created by Igor on 13.11.2021.
//

import SwiftUI

struct NumbersView: View {
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List(persons) { person in
                Section(header: Text("\(person.fullName)")) {
                    MailAndNumberForPerson(person: person)
                }
            }
            .navigationTitle("Numbers")
        }
    }
}

struct NumbersView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersView(persons: Person.generatePersons())
    }
}
