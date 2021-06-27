@testable import Resolver
import XCTest

protocol Human: AnyObject {}

final class Person: Human {
    let name: String
    let animal: Animal

    init(name: String, animal: Animal) {
        self.name = name
        self.animal = animal
    }
}

protocol Animal: AnyObject {}

final class Dog: Animal {
    let name: String
    let age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

final class ResolverTests: XCTestCase {
    func test1() {
        let resolver = Resolver()
        resolver.register(Animal.self, named: "animal") { (_, name, age) in Dog(name: name, age: age) }

        let dog = resolver.resolve(Animal.self, named: "animal", arguments: "Qoplon", 1) as! Dog
        XCTAssertEqual(dog.name, "Qoplon")
        XCTAssertEqual(dog.age, 1)
    }
}
