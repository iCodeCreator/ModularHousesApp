//
//  SeriesTableViewController.swift
//  ModularHousesApp
//
//  Created by abd ul’Karim 📚 on 11.05.2024.
//

import UIKit

final class SeriesTableViewController: UITableViewController {
    
    var seriesList = House.getHouse()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 160
    }
        
        // MARK: - Navigation
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if let indexPath = tableView.indexPathForSelectedRow {
                guard let seriesVC = segue.destination as? SeriesDetailsViewController else { return }
                seriesVC.series = seriesList[indexPath.row]
            }
        }
}
    
    // MARK: - UITableViewDataSource
    extension SeriesTableViewController {
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            seriesList.count
        }
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "seriesCell", for: indexPath)
            let series = seriesList[indexPath.row]
            
            var content = cell.defaultContentConfiguration()
            content.text = series.series
            content.image = UIImage(named: series.series)
            content.imageProperties.cornerRadius = 19
            
            cell.contentConfiguration = content
            return cell
        }
        
        override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
            let currentSeries = seriesList.remove(at: sourceIndexPath.row)
            seriesList.insert(currentSeries, at: destinationIndexPath.row)
        }
    }
    
    // MARK: - UITableViewDelegate
    extension SeriesTableViewController {
      
        override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
            .none
        }
        
        override func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool {
            false
        }
    }

