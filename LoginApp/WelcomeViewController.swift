//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Богдан Анищенков on 13.08.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    let gradient: CAGradientLayer = CAGradientLayer()
    
    gradient.colors = [UIColor.black.cgColor, UIColor.blue.cgColor]
    gradient.locations = [0.0 , 1.0]
    gradient.startPoint = CGPoint(x : 0.0, y : 0)
    gradient.endPoint = CGPoint(x :0.0, y: 0.5) // you need to play with 0.15 to adjust gradient vertically
    gradient.frame = view.bounds
    view.layer.addSublayer(gradient)
    
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    
}
