//
//  PersonListViewController.swift
//  ContactList
//
//  Created by Elena Sharipova on 19.04.2023.
//

import UIKit

final class PersonListViewController: UITableViewController {
    // MARK: - Private Properties
        private var personList = Person.getPersonList(
            from: names,
            lastNames,
            phones,
            and: emails
        )
    
    // MARK: - Override Methods
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let person = personList[indexPath.row]
        let detailsVC = segue.destination as? PersonDetailsViewController
        detailsVC?.person = person
    }
}

// MARK: - UITableViewDataSource
extension PersonListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        let person = personList[indexPath.row]
        content.text = person.completeName
        cell.contentConfiguration = content

        return cell
    }

}
