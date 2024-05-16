//
//  ContactViewController.swift
//  ModularHousesApp
//
//  Created by abd ul’Karim 📚 on 11.05.2024.
//

import UIKit

final class ContactViewController: UIViewController {
    
    @IBOutlet var phoneStackView: UIStackView!
    
    @IBOutlet var addressStackView: UIStackView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        phoneStackView.layer.cornerRadius = 19
        addressStackView.layer.cornerRadius = 19
    }
}
