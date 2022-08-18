//
//  TabBarViewController.swift
//  LoginApp
//
//  Created by Богдан Анищенков on 16.08.2022.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    var user: User!
    
    //MARK: - LifeCycleMethods

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBar.items?[1].title = user.name + " " + user.surname
    }
}
