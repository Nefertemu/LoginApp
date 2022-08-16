//
//  TabBarViewController.swift
//  LoginApp
//
//  Created by Богдан Анищенков on 16.08.2022.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    var userName = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        tabBar.items?[1].title = userName
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
