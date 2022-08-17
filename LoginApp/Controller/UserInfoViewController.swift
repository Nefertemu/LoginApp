//
//  UserInfoViewController.swift
//  LoginApp
//
//  Created by Богдан Анищенков on 16.08.2022.
//

import UIKit

final class UserInfoViewController: UIViewController {
    
    @IBOutlet weak var swiftLogo: UIImageView!
    @IBOutlet weak var aboutMeLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = user.name + " " + user.surname
        swiftLogo.layer.cornerRadius = 50
        aboutMeLabel.text = user.aboutMe
    }
}
