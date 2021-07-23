@propertyWrapper public struct Injected<Service> {
    public var wrappedValue: Service {
        get { service }
        set { service = newValue }
    }

    private var service: Service

    public init(resolver: Resolver = .main, name: String? = nil) {
        service = resolver.resolve(Service.self, named: name)!
    }

    public init<Arg1>(resolver: Resolver = .main, name: String? = nil, arguments arg1: Arg1) {
        service = resolver.doResolve(Service.self, named: name, arguments: (resolver, arg1)) { _ in }!
    }
}
