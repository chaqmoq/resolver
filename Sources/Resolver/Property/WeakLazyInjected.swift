/// Injects and resolves an optional service when accessed for the first time and deallocates it when there is no strong reference left to it.
@propertyWrapper
public struct WeakLazyInjected<Service: AnyObject> {
    /// A wrapped value.
    public var wrappedValue: Service? {
        mutating get {
            if resolver.isAtomic {
                resolver.lock.sync {
                    if service == nil {
                        service = resolver.doResolve(
                            Service.self,
                            named: name,
                            arguments: resolver
                        )
                    }
                }
            } else {
                if service == nil {
                    service = resolver.doResolve(
                        Service.self,
                        named: name,
                        arguments: resolver
                    )
                }
            }

            return service
        }
        set {
            if resolver.isAtomic {
                resolver.lock.sync { service = newValue }
            } else {
                service = newValue
            }
        }
    }

    private let resolver: Resolver
    private let name: String?
    private weak var service: Service?

    /// Initializes a new instance of a service lazily.
    ///
    /// - Parameters:
    ///   - resolver: An instance of `Resolver`. Defaults to `main`.
    ///   - name: The name of a service. Defaults to `nil`.
    public init(
        resolver: Resolver = .main,
        name: String? = nil
    ) {
        self.resolver = resolver
        self.name = name
    }
}
