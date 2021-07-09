@testable import Resolver
import XCTest

final class ServiceRegistrationTests: XCTestCase {
    func testEquatable() {
        // Arrange
        let scope: Scope = .cached
        typealias Factory = (Int) -> String

        // Act
        let registration1 = ServiceRegistration(scope: scope, factory: Factory.self)
        let registration2 = ServiceRegistration(scope: scope, factory: Factory.self)

        // Assert
        XCTAssertEqual(registration1, registration2)
    }
}
