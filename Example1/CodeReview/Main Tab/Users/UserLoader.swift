import Foundation

protocol UserLoader {
    func loadUsers(completion: @escaping ([User]?, Error?) -> Void)
}

