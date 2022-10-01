//
//  ViewController.swift
//  SingInApp
//
//  Created by Aleksandr Mayyura on 01.10.2022.
//

import UIKit

class LogInViewController: UIViewController {
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    let userName = "1"
    let password = "1"

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        userNameTF.resignFirstResponder()
        passwordTF.resignFirstResponder()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if userNameTF.text == userName && passwordTF.text == password {
            guard let userVC = segue.destination as? UserViewController else { return }
            userVC.userName = userNameTF.text
        } else {
            presentAlert(
                titel: "Ooops! \u{1F97A} login or password entered incorrectly",
                message: "Try again"
            )
        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    @IBAction func forgotUserNameTapping() {
        presentAlert(titel: "I WILL HELP", message: "Your name is 1 \u{1F60A}")
    }
    
    @IBAction func forgotPasswordTapping() {
        presentAlert(titel: "I WILL HELP", message: "Your password is 1 \u{1F60A}")
    }
    
    func presentAlert(titel: String, message: String) {
        let alertVC = UIAlertController(
            title: titel,
            message: message,
            preferredStyle: .alert
        )
        let actionAlert = UIAlertAction(title: "OK", style: .default) {_ in
            self.passwordTF.text = ""
        }
        
        alertVC.addAction(actionAlert)
        present(alertVC, animated: true)
    }
}

