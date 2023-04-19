//
//  Person.swift
//  ContactList
//
//  Created by Elena Sharipova on 19.04.2023.
//

struct Person {
    let name: String
    let lastName: String
    let phone: String
    let email: String
    
    var completeName: String {
        get { "\(name) \(lastName)" }
    }
    
    static func getPersonList(from names: [String], _ lastNames: [String], _ phones: [String], and emails: [String]) -> [Person] {
        let uniqueNames = Array(Set(names))
        let uniqueLastNames = Array(Set(lastNames))
        let uniquePhones = Array(Set(phones))
        let uniqueEmails = Array(Set(emails))
        
        var persons: [Person] = []
        
        for index in names.indices {
            let person = Person(
                name: uniqueNames[index],
                lastName: uniqueLastNames[index],
                phone: uniquePhones[index],
                email: uniqueEmails[index]
            )
            
            persons.append(person)
        }
        
        return persons
    }
}
