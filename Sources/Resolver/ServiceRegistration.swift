final class ServiceRegistration {
    typealias Factory = Any

    let scope: Scope
    let factory: Factory

    init(scope: Scope, factory: Factory) {
        self.scope = scope
        self.factory = factory
    }
}
