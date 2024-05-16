//
//  SeriesDetailsViewController.swift
//  ModularHousesApp
//
//  Created by abd ul’Karim 📚 on 13.05.2024.
//

import UIKit

final class SeriesDetailsViewController: UIViewController {

    @IBOutlet var photoSeriesImageView: UIImageView!
    @IBOutlet var seriesLabel: UILabel!
    @IBOutlet var descriptionSeriesLabel: UILabel!
    
    var series: House!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        photoSeriesImageView.layer.cornerRadius = 19
        photoSeriesImageView.image = UIImage(named: series.series)
        seriesLabel.text = series.series
        descriptionSeriesLabel.text = series.description
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let projectTableVC = segue.destination as? ProjectsTableViewController else { return }
        projectTableVC.projectList = series.project
    }
    
}
