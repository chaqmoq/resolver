import Foundation

public final class Resolver {
    private var serviceRegistrations: [ServiceKey: ServiceRegistrationType] = .init()

    public init() {}
}

extension Resolver {
    public func register<Service>(
        _ serviceType: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = .graph,
        serviceFactory: @escaping (Resolver) -> Service
    ) {
        _register(serviceType, named: name, scoped: scope, serviceFactory: serviceFactory)
    }

    func _register<Service, Arguments>(
        _ serviceType: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = .graph,
        serviceFactory: @escaping (Arguments) -> Service
    ) {
        let serviceKey = ServiceKey(serviceType: serviceType, name: name, argumentsType: Arguments.self)
        let serviceRegistration = ServiceRegistration(scope: scope, serviceFactory: serviceFactory)
        serviceRegistrations[serviceKey] = serviceRegistration
    }
}

extension Resolver {
    public func resolve<Service>(
        _ serviceType: Service.Type,
        named name: String? = nil
    ) -> Service? {
        typealias ServiceFactoryType = ((Resolver)) -> Service
        let arguments = (self)
        let serviceFactory = _resolve(serviceType, named: name) { (serviceFactory: ServiceFactoryType) in }

        return (serviceFactory as? ServiceFactoryType)?(arguments)
    }

    func _resolve<Service, Arguments>(
        _ serviceType: Service.Type,
        named name: String? = nil,
        serviceFactory: @escaping ((Arguments) -> Service) -> Void
    ) -> Any? {
        let serviceKey = ServiceKey(serviceType: serviceType, name: name, argumentsType: Arguments.self)
        return (serviceRegistrations[serviceKey] as? ServiceRegistration)?.serviceFactory
    }
}
