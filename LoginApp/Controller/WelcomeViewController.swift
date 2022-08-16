
import UIKit

final class WelcomeViewController: UIViewController {
    
    //MARK: - IBOutlets
    
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var logOutButton: UIButton!
    
    //MARK: - Public Properties
    
    var userName = ""
    
    //MARK: - LifeCycleMethods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logOutButton.titleLabel?.textColor = .white
        welcomeLabel.text = "Welcome, \(userName)!"
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setGradientBackground()
        super.viewWillAppear(animated)
    }
    
    //MARK: Private methods
    
    private func setGradientBackground() {
        let colorTop =  UIColor(
            red: 190.0/255.0,
            green: 130.0/255.0,
            blue: 140.0/255.0,
            alpha: 1.0).cgColor
        let colorBottom = UIColor(
            red: 190.0/255.0,
            green: 190.0/255.0,
            blue: 210.0/255.0,
            alpha: 1.0).cgColor
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = self.view.bounds
        
        self.view.layer.insertSublayer(gradientLayer, at:0)
    }
}
