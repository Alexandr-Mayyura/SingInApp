//
//  UserViewController.swift
//  SingInApp
//
//  Created by Aleksandr Mayyura on 01.10.2022.
//

import UIKit

class UserViewController: UIViewController {

    @IBOutlet var helloUserLabel: UILabel!
    @IBOutlet var emojiLabel: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emojiLabel.text = "\u{1F44B}"
        helloUserLabel.text = "Hello, \(userName ?? "")!"
    }
}
