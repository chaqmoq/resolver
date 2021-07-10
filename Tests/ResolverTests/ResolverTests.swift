@testable import Resolver
import XCTest

final class ResolverTests: XCTestCase {
    let resolver = Resolver()

    func testRegisterAndResolve() {
        // Arrange
        let type = Service.self
        var name = String(describing: type)

        for scope in Scope.allCases {
            // Arrange
            name += scope.rawValue

            // Act
            resolver.register(type, named: name, scoped: scope) { _ in Service() }
            let service = resolver.resolve(type, named: name)

            // Assert
            XCTAssertNotNil(service)
        }
    }
}
