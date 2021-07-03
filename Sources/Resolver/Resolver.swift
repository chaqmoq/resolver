import Foundation

public final class Resolver {
    private var registrations: [ServiceKey: ServiceRegistration] = .init()

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
        let key = ServiceKey(type: type, name: name, argumentsType: Arguments.self)
        let registration = ServiceRegistration(scope: scope, factory: factory)
        registrations[key] = registration
    }
}

extension Resolver {
    public func resolve<Service>(
        _ type: Service.Type = Service.self,
        named name: String? = nil
    ) -> Service? {
        let arguments = (self)
        typealias Factory = ((Resolver)) -> Service

        return resolve(type, named: name, arguments: arguments) { (factory: Factory) in }
    }

    func resolve<Service, Arguments>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        arguments: Arguments,
        factory: @escaping ((Arguments) -> Service) -> Void
    ) -> Service? {
        let key = ServiceKey(type: type, name: name, argumentsType: Arguments.self)
        let factory = registrations[key]?.factory

        return (factory as? (Arguments) -> Service)?(arguments)
    }
}
