//
//  ContactsTableViewController.swift
//  PersonsListApp
//
//  Created by Aleksandr on 09.09.2020.
//  Copyright © 2020 Aleksandr Lukash. All rights reserved.
//

import UIKit

class ContactsTableViewController: UITableViewController {
  
  var persons: [Person]!
  
  override func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  
  override func tableView(_ tableView: UITableView,
                          numberOfRowsInSection section: Int) -> Int {
    return persons.count
  }
  
  override func tableView(_ tableView: UITableView,
                          cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell",
                                             for: indexPath)
    cell.textLabel?.text = persons[indexPath.row].fullName
    
    return cell
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    guard let detailedVC =
      segue.destination as? DetailedViewController else { return }
    guard let indexPath = tableView.indexPathForSelectedRow else { return }
    detailedVC.currentPerson = persons[indexPath.row]
  }
}
