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
            imageForRow
            MailAndNumberForPerson(person: person)
        }
        .listStyle(.plain)
        .navigationTitle("\(person.fullName)")
    }
    
    private var imageForRow: some View {
        HStack {
            Spacer()
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 100, height: 100)
            Spacer()
        }
        .frame(height: 120)
    }
}

struct ContactInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ContactInfoView(person: Person.generatePerson())
    }
}
