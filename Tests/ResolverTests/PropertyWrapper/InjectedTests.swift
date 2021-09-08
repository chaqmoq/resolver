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
        Resolver.register { _, arg1 in ServiceWithOneArgument(arg1: arg1) }

        // Act
        let injectedService = InjectedService2()

        // Assert
        XCTAssertTrue(type(of: injectedService.arg1) == ServiceWithOneArgument.self)
    }

    func testServiceWithTwoArguments() {
        // Arrange
        Resolver.register { _, arg1, arg2 in ServiceWithTwoArguments(arg1: arg1, arg2: arg2) }

        // Act
        let injectedService = InjectedService3()

        // Assert
        XCTAssertTrue(type(of: injectedService.arg1) == ServiceWithTwoArguments.self)
    }

    func testServiceWithThreeArguments() {
        // Arrange
        Resolver.register { _, arg1, arg2, arg3 in
            ServiceWithThreeArguments(arg1: arg1, arg2: arg2, arg3: arg3)
        }

        // Act
        let injectedService = InjectedService4()

        // Assert
        XCTAssertTrue(type(of: injectedService.arg1) == ServiceWithThreeArguments.self)
    }

    func testServiceWithFourArguments() {
        // Arrange
        Resolver.register { _, arg1, arg2, arg3, arg4 in
            ServiceWithFourArguments(arg1: arg1, arg2: arg2, arg3: arg3, arg4: arg4)
        }

        // Act
        let injectedService = InjectedService5()

        // Assert
        XCTAssertTrue(type(of: injectedService.arg1) == ServiceWithFourArguments.self)
    }

    func testServiceWithFiveArguments() {
        // Arrange
        Resolver.register { _, arg1, arg2, arg3, arg4, arg5 in
            ServiceWithFiveArguments(arg1: arg1, arg2: arg2, arg3: arg3, arg4: arg4, arg5: arg5)
        }

        // Act
        let injectedService = InjectedService6()

        // Assert
        XCTAssertTrue(type(of: injectedService.arg1) == ServiceWithFiveArguments.self)
    }

    func testServiceWithSixArguments() {
        // Arrange
        Resolver.register { _, arg1, arg2, arg3, arg4, arg5, arg6 in
            ServiceWithSixArguments(arg1: arg1, arg2: arg2, arg3: arg3, arg4: arg4, arg5: arg5, arg6: arg6)
        }

        // Act
        let injectedService = InjectedService7()

        // Assert
        XCTAssertTrue(type(of: injectedService.arg1) == ServiceWithSixArguments.self)
    }

    func testServiceWithSevenArguments() {
        // Arrange
        Resolver.register { _, arg1, arg2, arg3, arg4, arg5, arg6, arg7 in
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

        // Act
        let injectedService = InjectedService8()

        // Assert
        XCTAssertTrue(type(of: injectedService.arg1) == ServiceWithSevenArguments.self)
    }

    func testServiceWithEightArguments() {
        // Arrange
        Resolver.register { _, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8 in
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

        // Act
        let injectedService = InjectedService9()

        // Assert
        XCTAssertTrue(type(of: injectedService.arg1) == ServiceWithEightArguments.self)
    }

    func testServiceWithNineArguments() {
        // Arrange
        Resolver.register { _, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9 in
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

        // Act
        let injectedService = InjectedService10()

        // Assert
        XCTAssertTrue(type(of: injectedService.arg1) == ServiceWithNineArguments.self)
    }

    func testServiceWithTenArguments() {
        // Arrange
        Resolver.register { _, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10 in
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

        // Act
        let injectedService = InjectedService11()

        // Assert
        XCTAssertTrue(type(of: injectedService.arg1) == ServiceWithTenArguments.self)
    }
}
