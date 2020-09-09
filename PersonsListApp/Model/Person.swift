//
//  Person.swift
//  PersonsListApp
//
//  Created by Aleksandr on 09.09.2020.
//  Copyright © 2020 Aleksandr Lukash. All rights reserved.
//

struct Person {
  
  let name: String
  let surname: String
  let email: String
  let phoneNumber: String
  
  var fullName: String { "\(name) \(surname)" }
}

extension Person {
  
  static func getPersonsList() -> [Person] {
    var persons: [Person] = []
    
    let names = DataManager.instance.names.shuffled()
    let surnames = DataManager.instance.surnames.shuffled()
    let emails = DataManager.instance.emails.shuffled()
    let phoneNumbers = DataManager.instance.phoneNumbers.shuffled()
    
    for index in 0..<names.count {
      persons.append(Person(name: names[index],
                            surname: surnames[index],
                            email: emails[index],
                            phoneNumber: phoneNumbers[index]))
    }
    
    return persons
  }
}
