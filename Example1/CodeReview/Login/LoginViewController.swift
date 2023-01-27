import UIKit

final class LoginViewController: UIViewController {
    private let loader: UIActivityIndicatorView = {
        let view = UIActivityIndicatorView(style: .large)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.tintColor = .red
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(loader)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

        NSLayoutConstraint.activate([
            loader.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loader.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            loader.heightAnchor.constraint(equalToConstant: 50),
            loader.widthAnchor.constraint(equalToConstant: 50),
        ])
    }
    
    @IBAction func didTapGoToMain(_ sender: Any) {
        loader.startAnimating()
        UserManager.isAuthenticated = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            AnalyticsService.track("User Logged In")
            self.loader.stopAnimating()
            let mainTab = UIStoryboard(name: "MainTabBar", bundle: .main).instantiateInitialViewController()!
            mainTab.modalPresentationStyle = .fullScreen
            self.navigationController?.pushViewController(mainTab, animated: true)
        }
    }
}
