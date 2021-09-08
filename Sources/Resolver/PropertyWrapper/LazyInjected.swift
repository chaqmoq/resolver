import Foundation

@propertyWrapper
public struct LazyInjected<Service> {
    public var wrappedValue: Service {
        mutating get {
            if resolver.isAtomic {
                resolver.lock.sync {
                    if service == nil { service = resolver.doResolve(Service.self, named: name, arguments: resolver) }
                }
            } else {
                if service == nil { service = resolver.doResolve(Service.self, named: name, arguments: resolver) }
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
    private var service: Service!

    public init(resolver: Resolver = .main, name: String? = nil) {
        self.resolver = resolver
        self.name = name
    }
}
