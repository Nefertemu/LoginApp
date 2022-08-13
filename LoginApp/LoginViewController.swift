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
    
    //MARK: - LifeCycleMethods
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - IBActions
    
    @IBAction func logInButtonPressed() {
        if userNameTF.text == userName, passwordTF.text == password {
            performSegue(withIdentifier: "toWelcomeScreen", sender: nil)
        } else {
            let alert = UIAlertController(
                title: "Invalid login or password",
                message: "Please, enter correct login and password",
                preferredStyle: .alert
            )
            let okButton = UIAlertAction(title: "OK", style: .cancel)
            alert.addAction(okButton)
            self.present(alert, animated: true)
        }
    }
    
    @IBAction func forgotUserNamePressed() {
        showForgotten(item: "username", hint: userName)
    }
    
    @IBAction func forgotPasswordPressed() {
        showForgotten(item: "password", hint: password)
    }
    
    //MARK: - Private methods
    
    private func showForgotten(item: String, hint: String) {
        let alert = UIAlertController(
            title: "Ooops!",
            message: "Your \(item) is \(hint) 😉",
            preferredStyle: .alert
        )
        let okButton = UIAlertAction(title: "OK", style: .cancel)
        alert.addAction(okButton)
        self.present(alert, animated: true)
    }
    
    //MARK: - Overridden methods
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        self.view.endEditing(true)
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

