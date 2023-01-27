import Foundation

final class UserManager {
    private static let key = "auth"

    static var isAuthenticated: Bool {
        get { UserDefaults.standard.bool(forKey: key) }
        set { UserDefaults.standard.set(newValue, forKey: key) }
    }
}
 
//import Foundation
//
//protocol Authentication {
//    var isAuthenticated: Bool { get set }
//}
//
//extension Authentication {
//    private static var key: String {
//        return "auth"
//    }
//
//    var isAuthenticated: Bool {
//        get { UserDefaults.standard.bool(forKey: Self.key) }
//        set { UserDefaults.standard.set(newValue, forKey: Self.key) }
//    }
//}
//
//struct UserManager: Authentication {
//    private let isAuthenticated: Bool
//
//    init(isAuthenticated: Bool) {
//        self.isAuthenticated = isAuthenticated
//    }
//
////    static var isAuthenticated: Bool {
////        get { UserDefaults.standard.bool(forKey: key) }
////        set { UserDefaults.standard.set(newValue, forKey: key) }
////    }
//}
//
