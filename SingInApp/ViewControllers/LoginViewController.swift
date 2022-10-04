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
    
    private let userLogin = User(login: "1", password: "1", userBio: nil)
    private let userData = User.getUserData()

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let userVC = segue.destination as? WelcomeViewController else { return }
        userVC.userName = userData.name
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



