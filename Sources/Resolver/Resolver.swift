import Foundation

public final class Resolver {
    private var serviceFactories: [ServiceKey: Any] = .init()

    public init() {}
}

extension Resolver {
    public func register<Service>(
        _ serviceType: Service.Type = Service.self,
        name: String? = nil,
        serviceFactory: @escaping (Resolver) -> Service
    ) {
        _register(serviceType, name: name, serviceFactory: serviceFactory)
    }

    func _register<Service, Arguments>(
        _ serviceType: Service.Type = Service.self,
        name: String? = nil,
        serviceFactory: @escaping (Arguments) -> Service
    ) {
        let serviceKey = ServiceKey(serviceType: serviceType, name: name, argumentsType: Arguments.self)
        serviceFactories[serviceKey] = serviceFactory
    }
}

extension Resolver {
    public func resolve<Service>(
        _ serviceType: Service.Type,
        name: String? = nil
    ) -> Service? {
        typealias ServiceFactoryType = ((Resolver)) -> Service
        let serviceFactory = _resolve(serviceType, name: name) {
            (serviceFactory: ServiceFactoryType) in serviceFactory((self))
        }

        return (serviceFactory as? ServiceFactoryType)?((self))
    }

    func _resolve<Service, Arguments>(
        _ serviceType: Service.Type,
        name: String? = nil,
        serviceFactory: @escaping ((Arguments) -> Service) -> Any
    ) -> Any? {
        let serviceKey = ServiceKey(serviceType: serviceType, name: name, argumentsType: Arguments.self)
        return serviceFactories[serviceKey]
    }
}
