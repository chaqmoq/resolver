@testable import Resolver
import XCTest

final class ServiceKeyTests: XCTestCase {
    func testEquatable() {
        // Arrange
        let key1 = ServiceKey(type: String.self, name: "string", argumentsType: Int.self)
        let key2 = ServiceKey(type: String.self, name: "string", argumentsType: Int.self)

        // Assert
        XCTAssertEqual(key1, key2)
    }
}
