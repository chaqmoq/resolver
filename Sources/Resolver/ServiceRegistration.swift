final class ServiceRegistration {
    typealias ServiceFactory = Any

    let scope: Scope
    let serviceFactory: ServiceFactory

    init(scope: Scope, serviceFactory: ServiceFactory) {
        self.scope = scope
        self.serviceFactory = serviceFactory
    }
}
