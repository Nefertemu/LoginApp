//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Богдан Анищенков on 13.08.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    //MARK: - IBOutlets
    
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var logOutButton: UIButton!
    
    //MARK: - Public Properties

    var userName = ""
    
    //MARK: - LifeCycleMethods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logOutButton.titleLabel?.textColor = .white
        welcomeLabel.text = "Welcome, \(userName)!"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setGradientBackground()
        super.viewWillAppear(animated)
    }
    
    //MARK: Private methods
    
    private func setGradientBackground() {
        let colorTop =  UIColor(red: 190.0/255.0, green: 130.0/255.0, blue: 140.0/255.0, alpha: 1.0).cgColor
        let colorBottom = UIColor(red: 130.0/255.0, green: 150.0/255.0, blue: 210.0/255.0, alpha: 1.0).cgColor
                    
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = self.view.bounds
                
        self.view.layer.insertSublayer(gradientLayer, at:0)
    }
    
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    
}
