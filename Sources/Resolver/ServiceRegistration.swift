final class ServiceRegistration {
    typealias ServiceFactory = Any

    let scope: Scope
    let factory: ServiceFactory

    init(scope: Scope, factory: ServiceFactory) {
        self.scope = scope
        self.factory = factory
    }
}
