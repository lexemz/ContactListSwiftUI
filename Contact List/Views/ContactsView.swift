//
//  ContactsView.swift
//  Contact List
//
//  Created by Igor on 13.11.2021.
//

import SwiftUI

struct ContactsView: View {
    let persons: [Person]

    var body: some View {
        List(persons) { person in
            NavigationLink(destination: ContactInfoView(person: person)) {
                Text(person.fullName)
            }
        }
        .navigationTitle("Contact List")
    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView(persons: Person.generateContacts())
    }
}
