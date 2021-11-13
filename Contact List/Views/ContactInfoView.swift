//
//  ContactInfoView.swift
//  Contact List
//
//  Created by Igor on 13.11.2021.
//

import SwiftUI

struct ContactInfoView: View {
    let person: Person

    var body: some View {
        List {
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 100, height: 100)

            MailAndNumberForPerson(person: person)
            // TODO: MAKE ALAIGMENT FOR IMAGE
        }
        .listStyle(.plain)
        .navigationTitle("\(person.fullName)")
    }
}

struct ContactInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ContactInfoView(person: Person.generatePerson())
    }
}
