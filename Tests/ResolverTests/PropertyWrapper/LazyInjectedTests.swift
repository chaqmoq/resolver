@testable import Resolver
import XCTest

final class LazyInjectedTests: XCTestCase {
    override func setUp() {
        super.setUp()

        Resolver.main.reset()
    }

    func testServiceWithoutArguments() {
        // Arrange
        Resolver.register { _ in Service1() }

        // Act
        let injectedService = LazyInjectedService1()

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
}
