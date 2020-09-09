//
//  GroupedContactsTableViewController.swift
//  PersonsListApp
//
//  Created by Aleksandr on 09.09.2020.
//  Copyright © 2020 Aleksandr Lukash. All rights reserved.
//

import UIKit

class GroupedContactsTableViewController: UITableViewController {
  
  var persons: [Person]!
  
  override func numberOfSections(in tableView: UITableView) -> Int {
    return persons.count
  }
  
  override func tableView(_ tableView: UITableView,
                          titleForHeaderInSection section: Int) -> String? {
    persons[section].fullName
  }
  
  override func tableView(_ tableView: UITableView,
                          numberOfRowsInSection section: Int) -> Int {
    return 2
  }
  
  override func tableView(_ tableView: UITableView,
                          cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell",
                                             for: indexPath)
    
    let person = persons[indexPath.section]
    
    
    switch indexPath.row {
    case 0:
      cell.imageView?.image = UIImage(systemName: "phone")
      cell.textLabel?.text = person.phoneNumber
    case 1:
      cell.imageView?.image = UIImage(systemName: "tray")
      cell.textLabel?.text = person.email
    default: break
    }
    
    return cell
  }
}
