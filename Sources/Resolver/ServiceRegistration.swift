final class ServiceRegistration {
    typealias ServiceFactoryType = Any

    let scope: Scope
    let serviceFactory: ServiceFactoryType

    init(scope: Scope, serviceFactory: ServiceFactoryType) {
        self.scope = scope
        self.serviceFactory = serviceFactory
    }
}
