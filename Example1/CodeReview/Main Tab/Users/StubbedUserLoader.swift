import Foundation

class StubbedUserLoader: UserLoader {
    static let shared = StubbedUserLoader()
    
    private init() {}
    
    func loadUsers(completion: @escaping ([User]?, Error?) -> Void) {
        let user1 = User(id: UUID(), name: "name 1")
        let user2 = User(id: UUID(), name: "name 2")
        completion([user1, user2], nil)
    }
}
