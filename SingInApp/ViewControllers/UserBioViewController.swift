//
//  UserBioViewController.swift
//  SingInApp
//
//  Created by Aleksandr Mayyura on 04.10.2022.
//

import UIKit

class UserBioViewController: UIViewController {
    
    @IBOutlet var userBioLabel: UILabel!
    
    var bio: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer()
        userBioLabel.text = bio
    }
}
