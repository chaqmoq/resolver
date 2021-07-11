@testable import Resolver
import XCTest

final class ResolverTests: XCTestCase {
    let resolver = Resolver()

    let arg1 = "string"
    let arg2 = 1
    let arg3: Float = 2.5
    let arg4: Double = 3.2
    let arg5 = true
    let arg6: Character = "a"
    let arg7: UInt = 4
    let arg8: UInt8 = 5
    let arg9: UInt16 = 6
    let arg10: UInt32 = 7

    func testResolveWithoutRegistration() {
        // Arrange
        let type = Service.self
        var name = String(describing: type)

        for scope in Scope.allCases {
            // Arrange
            name += scope.rawValue

            // Act
            let service = resolver.resolve(type, named: name)

            // Assert
            XCTAssertNil(service)
        }
    }

    func testRegisterAndResolve() {
        // Arrange
        let type = Service.self
        var name = String(describing: type)

        for scope in Scope.allCases {
            // Arrange
            name += scope.rawValue

            // Act
            resolver.register(type, named: name, scoped: scope) { _ in Service() }
            let service1 = resolver.resolve(type, named: name)
            let service2 = resolver.resolve(type, named: name)

            // Assert
            XCTAssertNotNil(service1)
            XCTAssertNotNil(service2)

            if scope == .graph || scope == .unique {
                XCTAssertFalse(service1 === service2)
            } else {
                XCTAssertTrue(service1 === service2)
            }
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

    func testRegisterAndResolveWithFourArguments() {
        // Arrange
        let type = ServiceWithFourArguments.self
        var name = String(describing: type)

        for scope in Scope.allCases {
            // Arrange
            name += scope.rawValue

            // Act
            resolver.register(type, named: name, scoped: scope) { _, arg1, arg2, arg3, arg4 in
                ServiceWithFourArguments(arg1: arg1, arg2: arg2, arg3: arg3, arg4: arg4)
            }
            let service = resolver.resolve(type, named: name, arguments: arg1, arg2, arg3, arg4)

            // Assert
            XCTAssertNotNil(service)
            XCTAssertEqual(service?.arg1, arg1)
            XCTAssertEqual(service?.arg2, arg2)
            XCTAssertEqual(service?.arg3, arg3)
            XCTAssertEqual(service?.arg4, arg4)
        }
    }

    func testRegisterAndResolveWithFiveArguments() {
        // Arrange
        let type = ServiceWithFiveArguments.self
        var name = String(describing: type)

        for scope in Scope.allCases {
            // Arrange
            name += scope.rawValue

            // Act
            resolver.register(type, named: name, scoped: scope) { _, arg1, arg2, arg3, arg4, arg5 in
                ServiceWithFiveArguments(arg1: arg1, arg2: arg2, arg3: arg3, arg4: arg4, arg5: arg5)
            }
            let service = resolver.resolve(type, named: name, arguments: arg1, arg2, arg3, arg4, arg5)

            // Assert
            XCTAssertNotNil(service)
            XCTAssertEqual(service?.arg1, arg1)
            XCTAssertEqual(service?.arg2, arg2)
            XCTAssertEqual(service?.arg3, arg3)
            XCTAssertEqual(service?.arg4, arg4)
            XCTAssertEqual(service?.arg5, arg5)
        }
    }

    func testRegisterAndResolveWithSixArguments() {
        // Arrange
        let type = ServiceWithSixArguments.self
        var name = String(describing: type)

        for scope in Scope.allCases {
            // Arrange
            name += scope.rawValue

            // Act
            resolver.register(type, named: name, scoped: scope) { _, arg1, arg2, arg3, arg4, arg5, arg6 in
                ServiceWithSixArguments(arg1: arg1, arg2: arg2, arg3: arg3, arg4: arg4, arg5: arg5, arg6: arg6)
            }
            let service = resolver.resolve(type, named: name, arguments: arg1, arg2, arg3, arg4, arg5, arg6)

            // Assert
            XCTAssertNotNil(service)
            XCTAssertEqual(service?.arg1, arg1)
            XCTAssertEqual(service?.arg2, arg2)
            XCTAssertEqual(service?.arg3, arg3)
            XCTAssertEqual(service?.arg4, arg4)
            XCTAssertEqual(service?.arg5, arg5)
            XCTAssertEqual(service?.arg6, arg6)
        }
    }

    func testRegisterAndResolveWithSevenArguments() {
        // Arrange
        let type = ServiceWithSevenArguments.self
        var name = String(describing: type)

        for scope in Scope.allCases {
            // Arrange
            name += scope.rawValue

            // Act
            resolver.register(type, named: name, scoped: scope) { _, arg1, arg2, arg3, arg4, arg5, arg6, arg7 in
                ServiceWithSevenArguments(
                    arg1: arg1,
                    arg2: arg2,
                    arg3: arg3,
                    arg4: arg4,
                    arg5: arg5,
                    arg6: arg6,
                    arg7: arg7
                )
            }
            let service = resolver.resolve(type, named: name, arguments: arg1, arg2, arg3, arg4, arg5, arg6, arg7)

            // Assert
            XCTAssertNotNil(service)
            XCTAssertEqual(service?.arg1, arg1)
            XCTAssertEqual(service?.arg2, arg2)
            XCTAssertEqual(service?.arg3, arg3)
            XCTAssertEqual(service?.arg4, arg4)
            XCTAssertEqual(service?.arg5, arg5)
            XCTAssertEqual(service?.arg6, arg6)
            XCTAssertEqual(service?.arg7, arg7)
        }
    }

    func testRegisterAndResolveWithEightArguments() {
        // Arrange
        let type = ServiceWithEightArguments.self
        var name = String(describing: type)

        for scope in Scope.allCases {
            // Arrange
            name += scope.rawValue

            // Act
            resolver.register(type, named: name, scoped: scope) { _, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8 in
                ServiceWithEightArguments(
                    arg1: arg1,
                    arg2: arg2,
                    arg3: arg3,
                    arg4: arg4,
                    arg5: arg5,
                    arg6: arg6,
                    arg7: arg7,
                    arg8: arg8
                )
            }
            let service = resolver.resolve(
                type,
                named: name,
                arguments: arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8
            )

            // Assert
            XCTAssertNotNil(service)
            XCTAssertEqual(service?.arg1, arg1)
            XCTAssertEqual(service?.arg2, arg2)
            XCTAssertEqual(service?.arg3, arg3)
            XCTAssertEqual(service?.arg4, arg4)
            XCTAssertEqual(service?.arg5, arg5)
            XCTAssertEqual(service?.arg6, arg6)
            XCTAssertEqual(service?.arg7, arg7)
            XCTAssertEqual(service?.arg8, arg8)
        }
    }

    func testRegisterAndResolveWithNineArguments() {
        // Arrange
        let type = ServiceWithNineArguments.self
        var name = String(describing: type)

        for scope in Scope.allCases {
            // Arrange
            name += scope.rawValue

            // Act
            resolver.register(type, named: name, scoped: scope) {
                _, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9 in
                ServiceWithNineArguments(
                    arg1: arg1,
                    arg2: arg2,
                    arg3: arg3,
                    arg4: arg4,
                    arg5: arg5,
                    arg6: arg6,
                    arg7: arg7,
                    arg8: arg8,
                    arg9: arg9
                )
            }
            let service = resolver.resolve(
                type,
                named: name,
                arguments: arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9
            )

            // Assert
            XCTAssertNotNil(service)
            XCTAssertEqual(service?.arg1, arg1)
            XCTAssertEqual(service?.arg2, arg2)
            XCTAssertEqual(service?.arg3, arg3)
            XCTAssertEqual(service?.arg4, arg4)
            XCTAssertEqual(service?.arg5, arg5)
            XCTAssertEqual(service?.arg6, arg6)
            XCTAssertEqual(service?.arg7, arg7)
            XCTAssertEqual(service?.arg8, arg8)
            XCTAssertEqual(service?.arg9, arg9)
        }
    }

    func testRegisterAndResolveWithTenArguments() {
        // Arrange
        let type = ServiceWithTenArguments.self
        var name = String(describing: type)

        for scope in Scope.allCases {
            // Arrange
            name += scope.rawValue

            // Act
            resolver.register(type, named: name, scoped: scope) {
                _, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10 in
                ServiceWithTenArguments(
                    arg1: arg1,
                    arg2: arg2,
                    arg3: arg3,
                    arg4: arg4,
                    arg5: arg5,
                    arg6: arg6,
                    arg7: arg7,
                    arg8: arg8,
                    arg9: arg9,
                    arg10: arg10
                )
            }
            let service = resolver.resolve(
                type,
                named: name,
                arguments: arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10
            )

            // Assert
            XCTAssertNotNil(service)
            XCTAssertEqual(service?.arg1, arg1)
            XCTAssertEqual(service?.arg2, arg2)
            XCTAssertEqual(service?.arg3, arg3)
            XCTAssertEqual(service?.arg4, arg4)
            XCTAssertEqual(service?.arg5, arg5)
            XCTAssertEqual(service?.arg6, arg6)
            XCTAssertEqual(service?.arg7, arg7)
            XCTAssertEqual(service?.arg8, arg8)
            XCTAssertEqual(service?.arg9, arg9)
            XCTAssertEqual(service?.arg10, arg10)
        }
    }
}
