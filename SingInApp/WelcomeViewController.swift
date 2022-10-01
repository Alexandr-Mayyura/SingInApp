//
//  UserViewController.swift
//  SingInApp
//
//  Created by Aleksandr Mayyura on 01.10.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var helloUserLabel: UILabel!
    @IBOutlet var emojiLabel: UILabel!
    
    var userName: String!
    
    private var gradientColor: CAGradientLayer = {
        let gradient = CAGradientLayer()
        gradient.type = .axial
        gradient.colors = [
            UIColor.systemPink.cgColor,
            UIColor.systemBlue.cgColor,
        ]
        gradient.locations = [0, 1]
        return gradient
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        gradientColor.frame = view.bounds
        view.layer.insertSublayer(gradientColor, at: 0)
        
        emojiLabel.text = "\u{1F44B}"
        helloUserLabel.text = "Hello, \(userName ?? "")!"
    }
}
