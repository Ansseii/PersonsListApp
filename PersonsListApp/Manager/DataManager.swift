//
//  DataManager.swift
//  PersonsListApp
//
//  Created by Aleksandr on 09.09.2020.
//  Copyright © 2020 Aleksandr Lukash. All rights reserved.
//

class DataManager {
  
  static let instance = DataManager()
  
  private init() {}
  
  let names = ["John", "Sam", "Tim", "Henry"]
  let surnames = ["Smith", "Brown", "Cook", "Andersen"]
  let emails = ["first@test.com", "second@test.com",
                "third@test.com", "fourth@test.com"]
  let phoneNumbers = ["11-11-11", "22-22-22", "33-33-33","44-44-44"]
}
