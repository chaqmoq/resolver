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
        let key = ServiceKey(serviceType: serviceType, name: name, argumentsType: Arguments.self)
        serviceFactories[key] = serviceFactory
    }
}
