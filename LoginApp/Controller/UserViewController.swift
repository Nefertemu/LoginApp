//
//  UserViewController.swift
//  LoginApp
//
//  Created by Богдан Анищенков on 16.08.2022.
//

import UIKit

final class UserViewController: UIViewController {
    
    //MARK: - IBOutlets

    @IBOutlet weak var placeOfBirthLabel: UILabel!
    @IBOutlet weak var dateOfBirthLabel: UILabel!
    @IBOutlet weak var hobbyLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    
    //MARK: - Private Properties

    var user: User!
    
    //MARK: - LifeCycleMethods

    override func viewDidLoad() {
        super.viewDidLoad()
        
        placeOfBirthLabel.text = user.placeOfBirth
        dateOfBirthLabel.text = user.dateOfBirth
        hobbyLabel.text = user.hobby
        jobLabel.text = user.job
        navigationItem.title = user.name + " " + user.surname

    }
    
    //MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let userInfo = segue.destination as? UIViewController else { return }
        
        if let userInfoVC = userInfo as? UserInfoViewController {
            userInfoVC.user = user
        }
    }
}
