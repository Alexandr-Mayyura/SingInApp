//
//  ViewController.swift
//  SingInApp
//
//  Created by Aleksandr Mayyura on 01.10.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    @IBOutlet var button: UIButton!
    
    private let userLogin = User.getUserLogin()
    private let userData = User.getUserData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer()
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarVC.viewControllers else { return }
        
        viewControllers.forEach { viewController in
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.userName = userData.name
                
            } else if let navigationControllerVC = viewController as? UINavigationController {
                guard let viewController = navigationControllerVC.topViewController else { return }
                
                if let userDataVC = viewController as? UserDataViewController {
                    userDataVC.model = userData
                    userDataVC.title = userData.name
                }
            }
        }
    }
    
    @IBAction func enteryWelcomeVC() {
        guard userNameTF.text == userLogin.login || passwordTF.text == userLogin.password else {
            presentAlert(
                title: "Ooops! \u{1F97A} login or password entered incorrectly",
                message: "Try again", textfield: passwordTF
            )
            return
        }
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }

    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 0
        ? presentAlert(title: "I WILL HELP", message: "Your name is 1 \u{1F60A}")
        : presentAlert(title: "I WILL HELP", message: "Your password is 1 \u{1F60A}")
    }
    
    private func presentAlert(title: String, message: String, textfield: UITextField? = nil) {
        let alertVC = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let actionAlert = UIAlertAction(title: "OK", style: .default) {_ in
            textfield?.text = ""
        }
        
        alertVC.addAction(actionAlert)
        present(alertVC, animated: true)
    }
}

extension UIView {
    func addVerticalGradientLayer() {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [
            UIColor(red: 210/255, green: 109/255, blue: 128/255, alpha: 1).cgColor,
            UIColor(red: 107/255, green: 148/255, blue: 210/255, alpha: 1).cgColor
        ]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}

