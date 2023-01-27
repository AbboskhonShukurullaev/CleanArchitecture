import UIKit

class IntroViewController: UIViewController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.navigationBar.isHidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if UserManager.isAuthenticated {
            AnalyticsService.track("User Logged In")
            let mainTab = UIStoryboard(name: "MainTabBar", bundle: .main).instantiateInitialViewController()!
            mainTab.modalPresentationStyle = .fullScreen
            self.navigationController?.pushViewController(mainTab, animated: false)
        }
    }
}

