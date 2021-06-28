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
        let arguments = (self)
        typealias ServiceFactoryType = ((Resolver)) -> Service

        return _resolve(serviceType, named: name, arguments: arguments) { (serviceFactory: ServiceFactoryType) in }
    }

    func _resolve<Service, Arguments>(
        _ serviceType: Service.Type,
        named name: String? = nil,
        arguments: Any,
        serviceFactory: @escaping ((Arguments) -> Service) -> Void
    ) -> Service? {
        let serviceKey = ServiceKey(serviceType: serviceType, name: name, argumentsType: Arguments.self)
        let serviceFactory = (serviceRegistrations[serviceKey] as? ServiceRegistration)?.serviceFactory

        return (serviceFactory as? (Arguments) -> Service)?(arguments as! Arguments)
    }
}
