//
//  AddRegistrationTableViewController.swift
//  Hotel Manzana
//
//  Created by Denis Bystruev on 18/10/2018.
//  Copyright © 2018 Denis Bystruev. All rights reserved.
//

import UIKit

class AddRegistrationTableViewController: UITableViewController {
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func doneBarButtonTapped(_ sender: UIBarButtonItem) {
        let firstName = firstNameTextField.text ?? ""
        let lastName = lastNameTextField.text ?? ""
        let email = emailTextField.text ?? ""
        
        print(#function)
        print("First Name: \(firstName)")
        print("Last Name: \(lastName)")
        print("E-mail: \(email)")
    }
}
