import UIKit

class SettingsViewController: BaseViewController {
    @IBAction func didTapLogout(_ sender: Any) {
        UserManager.isAuthenticated = false
        
        self.navigationController?.popToRootViewController(animated: true)
    }
}
