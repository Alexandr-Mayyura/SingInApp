//
//  UserViewController.swift
//  SingInApp
//
//  Created by Aleksandr Mayyura on 01.10.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var helloUserLabel: UILabel!
 
    var userName: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer()
        helloUserLabel.text = "Hello, \(userName ?? "")!"
    }
}

