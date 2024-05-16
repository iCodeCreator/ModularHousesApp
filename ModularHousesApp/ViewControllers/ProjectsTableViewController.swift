//
//  ProjectsTableViewController.swift
//  ModularHousesApp
//
//  Created by abd ul’Karim 📚 on 13.05.2024.
//

import UIKit

final class ProjectsTableViewController: UITableViewController {
    
    var projectList: [Project]!

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 150
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            guard let projectDetailsVC = segue.destination as? ProjectDetailsViewController else { return }
            projectDetailsVC.projects = projectList[indexPath.row]
        }
    }
}

// MARK: - UITableViewDataSource
extension ProjectsTableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        projectList.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "projectCell", for: indexPath)
        let projects = projectList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = projects.title
        content.image = UIImage(named: projects.title)
        content.imageProperties.cornerRadius = 19
        
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let currentProject = projectList.remove(at: sourceIndexPath.row)
        projectList.insert(currentProject, at: destinationIndexPath.row)
    }
}

// MARK: - UITableViewDelegate
extension ProjectsTableViewController {
  
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        .none
    }
    
    override func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool {
        false
    }
}
