//
//  UserViewController.swift
//  LoginApp
//
//  Created by Богдан Анищенков on 16.08.2022.
//

import UIKit

final class UserViewController: UIViewController {
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = user.name + " " + user.surname
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let userInfo = segue.destination as? UIViewController else { return }
        
        if let userInfoVC = userInfo as? UserInfoViewController {
            userInfoVC.user = user
        }
    }
}
