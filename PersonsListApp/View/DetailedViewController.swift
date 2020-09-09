//
//  DetailedViewController.swift
//  PersonsListApp
//
//  Created by Aleksandr on 09.09.2020.
//  Copyright © 2020 Aleksandr Lukash. All rights reserved.
//

import UIKit

class DetailedViewController: UIViewController {
  
  @IBOutlet weak var emailValueLabel: UILabel!
  @IBOutlet weak var phoneValueLabel: UILabel!
  
  var currentPerson: Person!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    navigationItem.title = currentPerson.fullName
    emailValueLabel.text = currentPerson.email
    phoneValueLabel.text = currentPerson.phoneNumber
  }
}
