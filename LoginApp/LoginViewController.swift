//
//  ViewController.swift
//  LoginApp
//
//  Created by Богдан Анищенков on 13.08.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    //MARK: - IBOutlets
    
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    //MARK: - Public Properties
    
    private let userName = "Bogdan"
    private let password = "qwe123"
    
    //MARK: - IBActions
    
    @IBAction func logInButtonPressed() {
        if userNameTF.text == userName, passwordTF.text == password {
            performSegue(withIdentifier: "toWelcomeScreen", sender: nil) } else {
                showForgotten(title: "Wrong username or password!", messege: "Please enter correct credentials")
            }
    }
    
    @IBAction func forgotUserNamePressed() {
        showForgotten(title: "Ooops!", messege: "Your username is \(userName) 😉")
    }
    
    @IBAction func forgotPasswordPressed() {
        showForgotten(title: "Ooops!", messege: "Your password is \(password) 😉")
    }
    
    //MARK: - Private methods
    
    private func showForgotten(title: String, messege: String) {
        let alert = UIAlertController(
            title: title,
            message: messege,
            preferredStyle: .alert
        )
        let okButton = UIAlertAction(title: "OK", style: .cancel)
        alert.addAction(okButton)
        self.present(alert, animated: true)
    }
    
    //MARK: - Overridden methods
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    //MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else {
            return
        }
        welcomeVC.userName = userName
    }
    
    @IBAction func unwindSegue(_ segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
}

