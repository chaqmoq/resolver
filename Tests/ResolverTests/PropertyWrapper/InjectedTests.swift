@testable import Resolver
import XCTest

final class InjectedTests: XCTestCase {
    override func setUp() {
        super.setUp()

        Resolver.main = .init()
    }

    func testServiceWithoutArguments() {
        // Arrange
        Resolver.register { _ in Service1() }

        // Act
        let injectedService = InjectedService1()

        // Assert
        XCTAssertTrue(type(of: injectedService.arg1) == Service1.self)

        // Arrange
        var arg1 = Service1()

        // Act
        injectedService.arg1 = arg1

        // Assert
        XCTAssertTrue(type(of: injectedService.arg1) == Service1.self)
        XCTAssertTrue(injectedService.arg1 === arg1)

        // Arrange
        Resolver.main.isAtomic = false
        arg1 = Service1()

        // Act
        injectedService.arg1 = arg1

        // Assert
        XCTAssertTrue(type(of: injectedService.arg1) == Service1.self)
        XCTAssertTrue(injectedService.arg1 === arg1)
    }

    func testServiceWithOneArgument() {
        // Arrange
        Resolver.register { resolver, arg1 in ServiceWithOneArgument(arg1: arg1) }

        // Act
        let injectedService = InjectedService2()

        // Assert
        XCTAssertTrue(type(of: injectedService.arg1) == ServiceWithOneArgument.self)
    }

    func testServiceWithTwoArguments() {
        // Arrange
        Resolver.register { resolver, arg1, arg2 in ServiceWithTwoArguments(arg1: arg1, arg2: arg2) }

        // Act
        let injectedService = InjectedService3()

        // Assert
        XCTAssertTrue(type(of: injectedService.arg1) == ServiceWithTwoArguments.self)
    }

    func testServiceWithThreeArguments() {
        // Arrange
        Resolver.register { resolver, arg1, arg2, arg3 in
            ServiceWithThreeArguments(arg1: arg1, arg2: arg2, arg3: arg3)
        }

        // Act
        let injectedService = InjectedService4()

        // Assert
        XCTAssertTrue(type(of: injectedService.arg1) == ServiceWithThreeArguments.self)
    }
}
