typealias ServiceRegistrationType = Any
typealias ServiceFactoryType = Any

final class ServiceRegistration {
    let scope: Scope
    let serviceFactory: ServiceFactoryType

    init(scope: Scope, serviceFactory: ServiceFactoryType) {
        self.scope = scope
        self.serviceFactory = serviceFactory
    }
}
