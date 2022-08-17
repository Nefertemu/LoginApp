
import UIKit

class WelcomeViewController: UIViewController {
    
    //MARK: - IBOutlets
    
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var logOutButton: UIButton!
    
    //MARK: - Public Properties
    
    var user: User!
    
    //MARK: - LifeCycleMethods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.textColor = .white
        welcomeLabel.text = "Welcome, \(user.name)!"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setGradientBackground()
        logOutButton.titleLabel?.textColor = .white
        super.viewWillAppear(animated)
    }
    
    //MARK: Private methods
    
    func setGradientBackground() {
        let colorTop =  UIColor(
            red: 50.0/255.0,
            green: 10.0/255.0,
            blue: 130.0/255.0,
            alpha: 1.0).cgColor
        let colorBottom = UIColor(
            red: 130/255.0,
            green: 80/255.0,
            blue: 170/255.0,
            alpha: 1.0).cgColor
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = self.view.bounds
        
        self.view.layer.insertSublayer(gradientLayer, at:0)
    }
}
