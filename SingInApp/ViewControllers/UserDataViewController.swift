//
//  UserDataViewController.swift
//  SingInApp
//
//  Created by Aleksandr Mayyura on 04.10.2022.
//

import UIKit

class UserDataViewController: UIViewController {

    @IBOutlet var photoUserImageView: UIImageView!
    
    @IBOutlet var nickNameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var locationLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var model: UserData?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addVerticalGradientLayer()
        guard let model = model else { return }
        photoUserImageView.image = UIImage(named: "\(model.image)")
        nickNameLabel.text = model.nickName
        ageLabel.text = model.age
        locationLabel.text = model.location
        emailLabel.text = model.email
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        photoUserImageView.layer.cornerRadius = photoUserImageView.frame.size.height / 2
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let userBioVC = segue.destination as? UserBioViewController else { return }
        guard let model = model else { return }
        userBioVC.bio = model.bio
        userBioVC.title = "\(model.name) biography"
    }

   

}
