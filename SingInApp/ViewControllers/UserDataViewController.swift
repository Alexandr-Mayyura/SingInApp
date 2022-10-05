//
//  UserDataViewController.swift
//  SingInApp
//
//  Created by Aleksandr Mayyura on 04.10.2022.
//

import UIKit

class UserDataViewController: UIViewController {

    @IBOutlet var photoUserImageView: UIImageView!
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var locationLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var model: UserData?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addVerticalGradientLayer()
        photoUserImageView.image = UIImage(named: "\(model?.image ?? "")")
        nameLabel.text = model?.nickName
        ageLabel.text = model?.age
        locationLabel.text = model?.location
        emailLabel.text = model?.email
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        photoUserImageView.layer.cornerRadius = photoUserImageView.frame.size.height / 2
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let userBioVC = segue.destination as? UserBioViewController else { return }
        userBioVC.bio = model?.bio
        userBioVC.title = "\(model?.name ?? "") biography"
    }

   

}
