//
//  PersonDetailsViewController.swift
//  ContactList
//
//  Created by Elena Sharipova on 19.04.2023.
//

import UIKit

final class PersonDetailsViewController: UIViewController {
    // MARK: - IB Outlets
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    // MARK: - Public Properties
    var person: Person!
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = person.completeName
        phoneLabel.text = "Phone: \(person.phone)"
        emailLabel.text = "Email: \(person.email)"
    }
}
