@testable import Resolver
import XCTest

final class ScopeTests: XCTestCase {
    func testCases() {
        XCTAssertEqual(Scope.allCases.count, 5)
        XCTAssertEqual(Scope.cached.rawValue, "cached")
        XCTAssertEqual(Scope.graph.rawValue, "graph")
        XCTAssertEqual(Scope.shared.rawValue, "shared")
        XCTAssertEqual(Scope.singleton.rawValue, "singleton")
        XCTAssertEqual(Scope.unique.rawValue, "unique")
    }
}
