
import UIKit

final class LoginViewController: UIViewController {
    
    //MARK: - IBOutlets
    
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    //MARK: - Public Properties
    
    private let userName = "1"
    private let password = "1"
    
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
        
        guard let tabBar = segue.destination as? UITabBarController else { return }
        
        if let tabBarVC = tabBar as? TabBarViewController {
            tabBarVC.userName = userName
        }
        
        guard let viewControllers = tabBar.viewControllers else { return }
        
        for viewController in viewControllers {
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.userName = userName
            } else if let userVC = viewController as? UserViewController {
                userVC.userName = userName
            }
        }
    }
    
    @IBAction func unwindSegue(_ segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
}

