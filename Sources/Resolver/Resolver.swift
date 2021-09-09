import Foundation

/// A dependency injection registry that registers and resolves services.
public final class Resolver {
    /// The main `Resolver`.
    public static var main = Resolver()

    /// The default scope `graph`.
    public static var defaultScope: Scope = .graph

    /// A boolean value to indicate whether to ensure thread safety while registering and resolving services or not. Defaults to `true` that means
    /// thread-safe. Sometimes, it is better to set it to `false` in a single-threaded environment or for services that are only going to be used in a single
    /// thread such as UI thread for performance reasons.
    public var isAtomic: Bool

    let lock = RecursiveLock()
    private var registrations: [ServiceKey: ServiceRegistration] = .init()
    private var cachedServices: Cache<ServiceKey, Any> = .init()
    private var graphServices: [ServiceKey: Any] = .init()
    private var sharedServices: [ServiceKey: WeakService] = .init()
    private var singletonServices: [ServiceKey: Any] = .init()
    private var resolutionDepth = 0

    /// Initializes a new instance of `Resolver`.
    ///
    /// - Parameter isAtomic: A boolean value to indicate whether to ensure thread safety while registering and resolving services or not. Defaults to
    /// `true` that means thread-safe.
    public init(isAtomic: Bool = true) {
        self.isAtomic = isAtomic
    }
}

extension Resolver {
    /// Registers a service in the main `Resolver`.
    /// 
    /// - Parameters:
    ///   - type: The type of a service. Defaults to the concrete type that is going to be initialized.
    ///   - name: The name of a service. Defaults to `nil`.
    ///   - scope: The scope of a service. Defaults to `graph`.
    ///   - factory: A factory method that creates a new instance of a service.
    /// - Returns: The main `Resolver`.
    @discardableResult
    public static func register<Service>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = defaultScope,
        factory: @escaping (Resolver) -> Service
    ) -> Resolver {
        main.register(type, named: name, scoped: scope, factory: factory)
    }

    /// Registers a service.
    ///
    /// - Parameters:
    ///   - type: The type of a service. Defaults to the concrete type that is going to be initialized.
    ///   - name: The name of a service. Defaults to `nil`.
    ///   - scope: The scope of a service. Defaults to `graph`.
    ///   - factory: A factory method that creates a new instance of a service.
    /// - Returns: The current instance of `Resolver` registering a service.
    @discardableResult
    public func register<Service>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = defaultScope,
        factory: @escaping (Resolver) -> Service
    ) -> Self {
        doRegister(type, named: name, scoped: scope, factory: factory)
        return self
    }

    @discardableResult
    func doRegister<Service, Arguments>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = defaultScope,
        factory: @escaping (Arguments) -> Service
    ) -> Self {
        isAtomic
            ? lock.sync { performRegister(type, named: name, scoped: scope, factory: factory) }
            : performRegister(type, named: name, scoped: scope, factory: factory)
    }

    @discardableResult
    private func performRegister<Service, Arguments>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = defaultScope,
        factory: @escaping (Arguments) -> Service
    ) -> Self {
        let key = ServiceKey(type: type, name: name, argumentsType: Arguments.self)
        let registration = ServiceRegistration(scope: scope, factory: factory)
        registrations[key] = registration

        return self
    }
}

extension Resolver {
    /// Resolves a service registered in the main `Resolver`.
    ///
    /// - Parameters:
    ///   - type: The type of a service. Defaults to the type inferred from the return type.
    ///   - name: The name of a service. Defaults to `nil`.
    /// - Returns: An instance of a registered service or `nil` if it is not registered.
    public static func resolve<Service>(_ type: Service.Type = Service.self, named name: String? = nil) -> Service? {
        main.resolve(type, named: name)
    }

    /// Resolves a service.
    ///
    /// - Parameters:
    ///   - type: The type of a service. Defaults to the type inferred from the return type.
    ///   - name: The name of a service. Defaults to `nil`.
    /// - Returns: An instance of a registered service or `nil` if it is not registered.
    public func resolve<Service>(_ type: Service.Type = Service.self, named name: String? = nil) -> Service? {
        doResolve(type, named: name, arguments: self)
    }

    func doResolve<Service, Arguments>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        arguments: Arguments
    ) -> Service? {
        isAtomic
            ? lock.sync { performResolve(type, named: name, arguments: arguments) }
            : performResolve(type, named: name, arguments: arguments)
    }

    private func performResolve<Service, Arguments>(
        _ serviceType: Service.Type = Service.self,
        named name: String? = nil,
        arguments: Arguments
    ) -> Service? {
        let key = ServiceKey(type: serviceType, name: name, argumentsType: Arguments.self)
        guard let registration = registrations[key] else { return nil }
        guard let factory = registration.factory as? (Arguments) -> Service else { return nil }

        switch registration.scope {
        case .cached:
            if let service = cachedServices.getValue(forKey: key) { return service as? Service }
            let service = factory(arguments)
            cachedServices.setValue(service, forKey: key)

            return service
        case .graph:
            resolutionDepth += 1
            let service = factory(arguments)
            resolutionDepth -= 1

            if resolutionDepth == 0 {
                graphServices.removeAll()
            } else if type(of: service) is AnyClass {
                graphServices[key] = service
            }

            return service
        case .shared:
            if let service = sharedServices[key]?.service { return service as? Service }
            let service = factory(arguments)
            if type(of: service) is AnyClass { sharedServices[key] = WeakService(service as AnyObject) }

            return service
        case .singleton:
            if let service = singletonServices[key] { return service as? Service }
            let service = factory(arguments)
            singletonServices[key] = service

            return service
        case .unique: return factory(arguments)
        }
    }
}

extension Resolver {
    struct WeakService {
        weak var service: AnyObject?

        init(_ service: AnyObject?) {
            self.service = service
        }
    }
}
