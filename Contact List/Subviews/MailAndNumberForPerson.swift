//
//  MailInListView.swift
//  Contact List
//
//  Created by Igor on 13.11.2021.
//

import SwiftUI

struct MailAndNumberForPerson: View {
    let person: Person
    
    var body: some View {
        Group {
            HStack {
                Image(systemName: "phone")
                    .foregroundColor(.blue)
                Text(person.number)
            }
            HStack {
                Image(systemName: "envelope")
                    .foregroundColor(.blue)
                Text(person.mail)
            }
        }
    }
}

struct MailInListView_Previews: PreviewProvider {
    static var previews: some View {
        MailAndNumberForPerson(person: Person.generatePerson())
    }
}
