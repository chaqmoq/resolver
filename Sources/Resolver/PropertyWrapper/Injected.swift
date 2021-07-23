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

    public init<Arg1, Arg2>(resolver: Resolver = .main, name: String? = nil, arguments arg1: Arg1, _ arg2: Arg2) {
        service = resolver.doResolve(Service.self, named: name, arguments: (resolver, arg1, arg2)) { _ in }!
    }

    public init<Arg1, Arg2, Arg3>(
        resolver: Resolver = .main,
        name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3
    ) {
        service = resolver.doResolve(Service.self, named: name, arguments: (resolver, arg1, arg2, arg3)) { _ in }!
    }

    public init<Arg1, Arg2, Arg3, Arg4>(
        resolver: Resolver = .main,
        name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4
    ) {
        service = resolver.doResolve(
            Service.self,
            named: name,
            arguments: (resolver, arg1, arg2, arg3, arg4)
        ) { _ in }!
    }
}
