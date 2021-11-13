//
//  Contact.swift
//  Contact List
//
//  Created by Igor on 13.11.2021.
//

import Foundation

struct Contact {
    let name: String
    let surname: String
    let mail: String
    let number: String
    
    static func generateContacts() -> [Contact] {
        var contacts: [Contact] = []
        
        let dm = DataManager.shared
        
        let names = dm.names.shuffled()
        let surnames = dm.surname.shuffled()
        let nums = dm.nums.shuffled()
        let mails = dm.mails.shuffled()
        
        let maximumValidContacts = min(names.count, surnames.count, nums.count, mails.count)
        
        for iteration in 0...maximumValidContacts {
            contacts.append(
                Contact(name: names[iteration],
                        surname: surnames[iteration],
                        mail: mails[iteration],
                        number: nums[iteration])
            )
        }
        
        return contacts
    }
}
