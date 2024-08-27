final class ServiceRegistration: Equatable {
    typealias Factory = Any

    let scope: Scope
    let factory: Factory

    init(
        scope: Scope,
        factory: Factory
    ) {
        self.scope = scope
        self.factory = factory
    }

    static func == (lhs: ServiceRegistration, rhs: ServiceRegistration) -> Bool {
        lhs.scope == rhs.scope &&
        type(of: lhs.factory) == type(of: rhs.factory)
    }
}
