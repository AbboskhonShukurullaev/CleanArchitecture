import UIKit

class UsersViewController: BaseViewController {    
    private var userLoader: UserLoader = StubbedUserLoader.shared

    override func viewDidLoad() {
        super.viewDidLoad()
        
        userLoader.loadUsers { [weak self] users, error in
            if let error = error {
                AnalyticsService.track("Received Error while loading users: \(error)")
                let alert = UIAlertController(title: "Failed to load users", message: nil, preferredStyle: .alert)
                self?.present(alert, animated: true)
                return
            }
            
            if let users = users {
                AnalyticsService.track("Loaded list of users: \(users)")
                //render users
            }
        }
    }
}
