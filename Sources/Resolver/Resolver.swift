import Foundation

public final class Resolver {
    private var registrations: [ServiceKey: ServiceRegistration] = .init()
    private var cachedServices: Cache<ServiceKey, Any> = .init()
    private var graphServices: [ServiceKey: Any] = .init()
    private var sharedServices: [ServiceKey: WeakService] = .init()
    private var singletonServices: [ServiceKey: Any] = .init()

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
        guard let registration = registrations[key] else { return nil }
        let factory = registration.factory as? (Arguments) -> Service

        switch registration.scope {
        case .cached:
            if let service = cachedServices.getValue(forKey: key) {
                return service as? Service
            } else {
                if let service = factory?(arguments) {
                    cachedServices.setValue(service, forKey: key)
                    return service
                }

                return nil
            }
        case .graph: return factory?(arguments) // TODO: implement
        case .shared: return factory?(arguments) // TODO: implement
        case .singleton:
            if let service = singletonServices[key] {
                return service as? Service
            } else {
                let service = factory?(arguments)
                singletonServices[key] = service

                return service
            }
        case .unique: return factory?(arguments)
        }
    }
}

extension Resolver {
    private struct WeakService {
        weak var service: AnyObject?

        init(_ service: AnyObject?) {
            self.service = service
        }
    }
}
