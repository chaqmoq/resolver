import Foundation

public final class Resolver {
    private var serviceRegistrations: [ServiceKey: ServiceRegistration] = .init()

    public init() {}
}

extension Resolver {
    public func register<Service>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = .graph,
        serviceFactory: @escaping (Resolver) -> Service
    ) {
        _register(type, named: name, scoped: scope, serviceFactory: serviceFactory)
    }

    func _register<Service, Arguments>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = .graph,
        serviceFactory: @escaping (Arguments) -> Service
    ) {
        let serviceKey = ServiceKey(type: type, name: name, argumentsType: Arguments.self)
        let serviceRegistration = ServiceRegistration(scope: scope, serviceFactory: serviceFactory)
        serviceRegistrations[serviceKey] = serviceRegistration
    }
}

extension Resolver {
    public func resolve<Service>(
        _ type: Service.Type = Service.self,
        named name: String? = nil
    ) -> Service? {
        let arguments = (self)
        typealias ServiceFactory = ((Resolver)) -> Service

        return resolve(type, named: name, arguments: arguments) { (serviceFactory: ServiceFactory) in }
    }

    func resolve<Service, Arguments>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        arguments: Arguments,
        serviceFactory: @escaping ((Arguments) -> Service) -> Void
    ) -> Service? {
        let serviceKey = ServiceKey(type: type, name: name, argumentsType: Arguments.self)
        let serviceFactory = serviceRegistrations[serviceKey]?.serviceFactory

        return (serviceFactory as? (Arguments) -> Service)?(arguments)
    }
}
