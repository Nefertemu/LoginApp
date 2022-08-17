//
//  UserInfoViewController.swift
//  LoginApp
//
//  Created by Богдан Анищенков on 16.08.2022.
//

import UIKit

final class UserInfoViewController: UIViewController {
    
    @IBOutlet weak var swiftLogo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        swiftLogo.layer.cornerRadius = 50
    }
}
