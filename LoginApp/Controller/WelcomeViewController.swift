
import UIKit

final class WelcomeViewController: UIViewController {
    
    //MARK: - IBOutlets
    
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var logOutButton: UIButton!
    
    //MARK: - Private Properties
    
    var user: User!
    
    //MARK: - LifeCycleMethods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.text = "Welcome, \(user.name)!"
        tabBarController?.tabBar.items?.last?.title = user.name + " " + user.surname

    }
    
    override func viewWillAppear(_ animated: Bool) {
        setGradientBackground()
        super.viewWillAppear(animated)
    }
    
    //MARK: Private methods
    
    func setGradientBackground() {
        let colorTop =  UIColor(
            red: 40.0/255.0,
            green: 70.0/255.0,
            blue: 100.0/255.0,
            alpha: 1.0).cgColor
        let colorBottom = UIColor(
            red: 15/255.0,
            green: 40/255.0,
            blue: 90/255.0,
            alpha: 1.0).cgColor
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = self.view.bounds
        
        self.view.layer.insertSublayer(gradientLayer, at:0)
    }
}
