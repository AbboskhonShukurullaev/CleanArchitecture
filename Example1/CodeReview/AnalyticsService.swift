import Foundation

enum AnalyticsService {
    static func track(_ event: String) {
        print("event: \(event) was tracked")
    }
}
