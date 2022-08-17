//
//  UserInfoViewController.swift
//  LoginApp
//
//  Created by Богдан Анищенков on 16.08.2022.
//

import UIKit

final class UserInfoViewController: UIViewController {
    
    //MARK: - IBOutlets

    @IBOutlet weak var swiftLogo: UIImageView!
    @IBOutlet weak var aboutMeLabel: UILabel!
    
    //MARK: - Private Properties

    var user: User!
    
    //MARK: - LifeCycleMethods

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = user.name + " " + user.surname
        swiftLogo.layer.cornerRadius = 50
        aboutMeLabel.text = user.aboutMe
    }
}
