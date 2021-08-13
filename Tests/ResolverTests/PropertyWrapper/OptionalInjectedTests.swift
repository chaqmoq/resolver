@testable import Resolver
import XCTest

final class OptionalInjectedTests: XCTestCase {
    override func setUp() {
        super.setUp()

        Resolver.main = .init()
    }

    func testServiceWithoutArguments() {
        // Arrange
        Resolver.register { _ in Service1() }

        // Act
        let injectedService = OptionalInjectedService1()

        // Assert
        XCTAssertTrue(type(of: injectedService.arg1) == Service1?.self)

        // Arrange
        var arg1 = Service1()

        // Act
        injectedService.arg1 = arg1

        // Assert
        XCTAssertTrue(type(of: injectedService.arg1) == Service1?.self)
        XCTAssertTrue(injectedService.arg1 === arg1)

        // Arrange
        Resolver.main.isAtomic = false
        arg1 = Service1()

        // Act
        injectedService.arg1 = arg1

        // Assert
        XCTAssertTrue(type(of: injectedService.arg1) == Service1?.self)
        XCTAssertTrue(injectedService.arg1 === arg1)
    }

    func testServiceWithOneArgument() {
        // Arrange
        Resolver.register { resolver, arg1 in ServiceWithOneArgument(arg1: arg1) }

        // Act
        let injectedService = OptionalInjectedService2()

        // Assert
        XCTAssertTrue(type(of: injectedService.arg1) == ServiceWithOneArgument?.self)
    }
}
