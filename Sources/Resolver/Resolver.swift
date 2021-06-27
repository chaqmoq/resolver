import Foundation

public final class Resolver {
    private var serviceFactories: [ServiceKey: Any] = .init()

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
        serviceFactories[serviceKey] = serviceFactory
    }
}

extension Resolver {
    public func resolve<Service>(
        _ serviceType: Service.Type,
        named name: String? = nil
    ) -> Service? {
        typealias ServiceFactoryType = ((Resolver)) -> Service
        let arguments = (self)
        let serviceFactory = _resolve(serviceType, named: name) {
            (serviceFactory: ServiceFactoryType) in serviceFactory(arguments)
        }

        return (serviceFactory as? ServiceFactoryType)?(arguments)
    }

    func _resolve<Service, Arguments>(
        _ serviceType: Service.Type,
        named name: String? = nil,
        serviceFactory: @escaping ((Arguments) -> Service) -> Any
    ) -> Any? {
        let serviceKey = ServiceKey(serviceType: serviceType, name: name, argumentsType: Arguments.self)
        return serviceFactories[serviceKey]
    }
}
