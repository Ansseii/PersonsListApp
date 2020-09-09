//
//  MainTabBarController.swift
//  PersonsListApp
//
//  Created by Aleksandr on 09.09.2020.
//  Copyright © 2020 Aleksandr Lukash. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {
  
  let persons: [Person] = Person.getPersonsList()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    guard let contactsVC =
      viewControllers?.first as? ContactsTableViewController else { return }
    guard let groupedContactsVC =
      viewControllers?.last as? GroupedContactsTableViewController else { return }
    contactsVC.persons = persons
    groupedContactsVC.persons = persons
  }
}
