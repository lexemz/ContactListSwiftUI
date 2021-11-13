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
            Text(person.number)
            Text(person.mail)
            // TODO: MAKE ALAIGMENT FOR IMAGE
        }
        .navigationTitle("\(person.fullName)")
    }
}

struct ContactInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ContactInfoView(person: Person(id: 1, name: "Leha", surname: "Marchenkov", mail: "aaa@gmai.com", number: "8-800-555-35-35"))
    }
}
