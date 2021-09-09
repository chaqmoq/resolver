@testable import Resolver
import XCTest

final class ResolverTests: XCTestCase {
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

    override func setUp() {
        super.setUp()

        Resolver.main.reset()
    }

    func testThreadSafety() {
        // Arrange
        let group = DispatchGroup()
        let type = Service1.self
        let name = String(describing: type)
        let scope: Scope = .graph
        let max: UInt32 = 1000

        // Act
        for _ in 0 ... max {
            group.enter()
            DispatchQueue.global().async {
                let sleep = UInt32.random(in: 0 ... max)
                usleep(sleep)

                Resolver.register(type, named: name, scoped: scope) { _ in Service1() }
                let service1 = Resolver.resolve(type, named: name)
                let service2 = Resolver.resolve(type, named: name)

                // Assert
                XCTAssertNotNil(service1)
                XCTAssertNotNil(service2)

                group.leave()
            }
        }

        let result = group.wait(timeout: DispatchTime.now() + 5)

        // Assert
        XCTAssert(result == .success)
    }

    func testResolutionFailureWithoutRegistration() {
        // Arrange
        let type = Service1.self
        var name = String(describing: type)

        for scope in Scope.allCases {
            // Arrange
            name += scope.rawValue

            // Act
            let service = Resolver.resolve(type, named: name)

            // Assert
            XCTAssertNil(service)
        }
    }

    func testRecursiveResolutionWithGraphScope() {
        // Arrange
        Resolver.register { _ in Service1() }
        Resolver.register { resolver in
            Service2(arg1: resolver.resolve(Service1.self)!)
        }
        Resolver.register { resolver in
            Service3(arg1: resolver.resolve(Service2.self)!)
        }

        // Act
        let service = Resolver.resolve(Service3.self)

        // Assert
        XCTAssertNotNil(service)
    }

    func testServiceWithAllScopes() {
        // Arrange
        let type = Service1.self
        var name = String(describing: type)

        for scope in Scope.allCases {
            // Arrange
            name += scope.rawValue

            // Act
            Resolver.register(type, named: name, scoped: scope) { _ in Service1() }
            let service1 = Resolver.resolve(type, named: name)
            let service2 = Resolver.resolve(type, named: name)

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

    func testServiceWithOneArgument() {
        // Arrange
        let type = ServiceWithOneArgument.self
        var name = String(describing: type)

        for scope in Scope.allCases {
            // Arrange
            name += scope.rawValue

            // Act
            Resolver.register(type, named: name, scoped: scope) { _, arg1 in ServiceWithOneArgument(arg1: arg1) }
            let service = Resolver.resolve(type, named: name, arguments: arg1)

            // Assert
            XCTAssertNotNil(service)
            XCTAssertEqual(service?.arg1, arg1)
        }
    }

    func testServiceWithTwoArguments() {
        // Arrange
        let type = ServiceWithTwoArguments.self
        var name = String(describing: type)

        for scope in Scope.allCases {
            // Arrange
            name += scope.rawValue

            // Act
            Resolver.register(type, named: name, scoped: scope) { _, arg1, arg2 in
                ServiceWithTwoArguments(arg1: arg1, arg2: arg2)
            }
            let service = Resolver.resolve(type, named: name, arguments: arg1, arg2)

            // Assert
            XCTAssertNotNil(service)
            XCTAssertEqual(service?.arg1, arg1)
            XCTAssertEqual(service?.arg2, arg2)
        }
    }

    func testServiceWithThreeArguments() {
        // Arrange
        let type = ServiceWithThreeArguments.self
        var name = String(describing: type)

        for scope in Scope.allCases {
            // Arrange
            name += scope.rawValue

            // Act
            Resolver.register(type, named: name, scoped: scope) { _, arg1, arg2, arg3 in
                ServiceWithThreeArguments(arg1: arg1, arg2: arg2, arg3: arg3)
            }
            let service = Resolver.resolve(type, named: name, arguments: arg1, arg2, arg3)

            // Assert
            XCTAssertNotNil(service)
            XCTAssertEqual(service?.arg1, arg1)
            XCTAssertEqual(service?.arg2, arg2)
            XCTAssertEqual(service?.arg3, arg3)
        }
    }

    func testServiceWithFourArguments() {
        // Arrange
        let type = ServiceWithFourArguments.self
        var name = String(describing: type)

        for scope in Scope.allCases {
            // Arrange
            name += scope.rawValue

            // Act
            Resolver.register(type, named: name, scoped: scope) { _, arg1, arg2, arg3, arg4 in
                ServiceWithFourArguments(arg1: arg1, arg2: arg2, arg3: arg3, arg4: arg4)
            }
            let service = Resolver.resolve(type, named: name, arguments: arg1, arg2, arg3, arg4)

            // Assert
            XCTAssertNotNil(service)
            XCTAssertEqual(service?.arg1, arg1)
            XCTAssertEqual(service?.arg2, arg2)
            XCTAssertEqual(service?.arg3, arg3)
            XCTAssertEqual(service?.arg4, arg4)
        }
    }

    func testServiceWithFiveArguments() {
        // Arrange
        let type = ServiceWithFiveArguments.self
        var name = String(describing: type)

        for scope in Scope.allCases {
            // Arrange
            name += scope.rawValue

            // Act
            Resolver.register(type, named: name, scoped: scope) { _, arg1, arg2, arg3, arg4, arg5 in
                ServiceWithFiveArguments(arg1: arg1, arg2: arg2, arg3: arg3, arg4: arg4, arg5: arg5)
            }
            let service = Resolver.resolve(type, named: name, arguments: arg1, arg2, arg3, arg4, arg5)

            // Assert
            XCTAssertNotNil(service)
            XCTAssertEqual(service?.arg1, arg1)
            XCTAssertEqual(service?.arg2, arg2)
            XCTAssertEqual(service?.arg3, arg3)
            XCTAssertEqual(service?.arg4, arg4)
            XCTAssertEqual(service?.arg5, arg5)
        }
    }

    func testServiceWithSixArguments() {
        // Arrange
        let type = ServiceWithSixArguments.self
        var name = String(describing: type)

        for scope in Scope.allCases {
            // Arrange
            name += scope.rawValue

            // Act
            Resolver.register(type, named: name, scoped: scope) { _, arg1, arg2, arg3, arg4, arg5, arg6 in
                ServiceWithSixArguments(arg1: arg1, arg2: arg2, arg3: arg3, arg4: arg4, arg5: arg5, arg6: arg6)
            }
            let service = Resolver.resolve(type, named: name, arguments: arg1, arg2, arg3, arg4, arg5, arg6)

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

    func testServiceWithSevenArguments() {
        // Arrange
        let type = ServiceWithSevenArguments.self
        var name = String(describing: type)

        for scope in Scope.allCases {
            // Arrange
            name += scope.rawValue

            // Act
            Resolver.register(type, named: name, scoped: scope) { _, arg1, arg2, arg3, arg4, arg5, arg6, arg7 in
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
            let service = Resolver.resolve(type, named: name, arguments: arg1, arg2, arg3, arg4, arg5, arg6, arg7)

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

    func testServiceWithEightArguments() {
        // Arrange
        let type = ServiceWithEightArguments.self
        var name = String(describing: type)

        for scope in Scope.allCases {
            // Arrange
            name += scope.rawValue

            // Act
            Resolver.register(type, named: name, scoped: scope) { _, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8 in
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
            let service = Resolver.resolve(
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

    func testServiceWithNineArguments() {
        // Arrange
        let type = ServiceWithNineArguments.self
        var name = String(describing: type)

        for scope in Scope.allCases {
            // Arrange
            name += scope.rawValue

            // Act
            Resolver.register(type, named: name, scoped: scope) {
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
            let service = Resolver.resolve(
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

    func testServiceWithTenArguments() {
        // Arrange
        let type = ServiceWithTenArguments.self
        var name = String(describing: type)

        for scope in Scope.allCases {
            // Arrange
            name += scope.rawValue

            // Act
            Resolver.register(type, named: name, scoped: scope) {
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
            let service = Resolver.resolve(
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
