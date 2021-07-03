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
        factory: @escaping (Resolver) -> Service
    ) {
        _register(type, named: name, scoped: scope, factory: factory)
    }

    func _register<Service, Arguments>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = .graph,
        factory: @escaping (Arguments) -> Service
    ) {
        let serviceKey = ServiceKey(type: type, name: name, argumentsType: Arguments.self)
        let serviceRegistration = ServiceRegistration(scope: scope, factory: factory)
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

        return resolve(type, named: name, arguments: arguments) { (factory: ServiceFactory) in }
    }

    func resolve<Service, Arguments>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        arguments: Arguments,
        factory: @escaping ((Arguments) -> Service) -> Void
    ) -> Service? {
        let serviceKey = ServiceKey(type: type, name: name, argumentsType: Arguments.self)
        let factory = serviceRegistrations[serviceKey]?.factory

        return (factory as? (Arguments) -> Service)?(arguments)
    }
}
