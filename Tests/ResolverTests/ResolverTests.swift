@testable import Resolver
import XCTest

final class ResolverTests: XCTestCase {
    let resolver = Resolver()

    let arg1 = "string"
    let arg2 = 1
    let arg3: Float = 2.5

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

    func testRegisterAndResolveWithTwoArguments() {
        // Arrange
        let type = ServiceWithTwoArguments.self
        var name = String(describing: type)

        for scope in Scope.allCases {
            // Arrange
            name += scope.rawValue

            // Act
            resolver.register(type, named: name, scoped: scope) { _, arg1, arg2 in
                ServiceWithTwoArguments(arg1: arg1, arg2: arg2)
            }
            let service = resolver.resolve(type, named: name, arguments: arg1, arg2)

            // Assert
            XCTAssertNotNil(service)
            XCTAssertEqual(service?.arg1, arg1)
            XCTAssertEqual(service?.arg2, arg2)
        }
    }

    func testRegisterAndResolveWithThreeArguments() {
        // Arrange
        let type = ServiceWithThreeArguments.self
        var name = String(describing: type)

        for scope in Scope.allCases {
            // Arrange
            name += scope.rawValue

            // Act
            resolver.register(type, named: name, scoped: scope) { _, arg1, arg2, arg3 in
                ServiceWithThreeArguments(arg1: arg1, arg2: arg2, arg3: arg3)
            }
            let service = resolver.resolve(type, named: name, arguments: arg1, arg2, arg3)

            // Assert
            XCTAssertNotNil(service)
            XCTAssertEqual(service?.arg1, arg1)
            XCTAssertEqual(service?.arg2, arg2)
            XCTAssertEqual(service?.arg3, arg3)
        }
    }
}
