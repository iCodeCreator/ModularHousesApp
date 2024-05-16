//
//  ProjectDetailsViewController.swift
//  ModularHousesApp
//
//  Created by abd ul’Karim 📚 on 13.05.2024.
//

import UIKit

final class ProjectDetailsViewController: UIViewController {
    
    @IBOutlet var photoProjectImageView: UIImageView!
    @IBOutlet var projectLabel: UILabel!
    @IBOutlet var typeProjectLabel: UILabel!
    @IBOutlet var areaLabel: UILabel!
    @IBOutlet var numberModulesLabel: UILabel!
    @IBOutlet var parametersLabel: UILabel!
    @IBOutlet var descriptionProjectLabel: UILabel!
    
    var projects: Project!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        photoProjectImageView.layer.cornerRadius = 19
        photoProjectImageView.image = UIImage(named: projects.title)
        projectLabel.text = projects.title
        typeProjectLabel.text = projects.type
        areaLabel.text = projects.area
        numberModulesLabel.text = projects.numberModules
        parametersLabel.text = projects.parameters
        descriptionProjectLabel.text = projects.description
       
    }
}
