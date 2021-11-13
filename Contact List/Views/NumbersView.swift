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
        Text("Numbers")
    }
}

struct NumbersView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersView(persons: Person.generateContacts())
    }
}
