@testable import Resolver
import XCTest

final class ResolverTests: XCTestCase {
    let resolver = Resolver()

    let arg1 = "string"

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

    func testRegisterAndResolveWithOneArgument() {
        // Arrange
        let type = ServiceWithOneArgument.self
        var name = String(describing: type)

        for scope in Scope.allCases {
            // Arrange
            name += scope.rawValue

            // Act
            resolver.register(type, named: name, scoped: scope) { _, arg1 in ServiceWithOneArgument(arg1: arg1) }
            let service = resolver.resolve(type, named: name, arguments: arg1)

            // Assert
            XCTAssertNotNil(service)
            XCTAssertEqual(service?.arg1, arg1)
        }
    }
}
