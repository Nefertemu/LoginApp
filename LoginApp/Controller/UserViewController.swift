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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
