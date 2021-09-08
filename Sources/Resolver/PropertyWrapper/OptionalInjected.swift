@propertyWrapper
public struct OptionalInjected<Service> {
    public var wrappedValue: Service? {
        get { service }
        set {
            if resolver.isAtomic {
                resolver.lock.sync { service = newValue }
            } else {
                service = newValue
            }
        }
    }

    private let resolver: Resolver
    private var service: Service?

    public init(resolver: Resolver = .main, name: String? = nil) {
        self.resolver = resolver
        service = resolver.resolve(Service.self, named: name)
    }

    public init<Arg1>(resolver: Resolver = .main, name: String? = nil, arguments arg1: Arg1) {
        self.resolver = resolver
        service = resolver.doResolve(Service.self, named: name, arguments: (resolver, arg1))
    }

    public init<Arg1, Arg2>(resolver: Resolver = .main, name: String? = nil, arguments arg1: Arg1, _ arg2: Arg2) {
        self.resolver = resolver
        service = resolver.doResolve(Service.self, named: name, arguments: (resolver, arg1, arg2))
    }

    public init<Arg1, Arg2, Arg3>(
        resolver: Resolver = .main,
        name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3
    ) {
        self.resolver = resolver
        service = resolver.doResolve(Service.self, named: name, arguments: (resolver, arg1, arg2, arg3))
    }

    public init<Arg1, Arg2, Arg3, Arg4>(
        resolver: Resolver = .main,
        name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4
    ) {
        self.resolver = resolver
        service = resolver.doResolve(
            Service.self,
            named: name,
            arguments: (resolver, arg1, arg2, arg3, arg4)
        )
    }

    public init<Arg1, Arg2, Arg3, Arg4, Arg5>(
        resolver: Resolver = .main,
        name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4, _ arg5: Arg5
    ) {
        self.resolver = resolver
        service = resolver.doResolve(
            Service.self,
            named: name,
            arguments: (resolver, arg1, arg2, arg3, arg4, arg5)
        )
    }

    public init<Arg1, Arg2, Arg3, Arg4, Arg5, Arg6>(
        resolver: Resolver = .main,
        name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4, _ arg5: Arg5, _ arg6: Arg6
    ) {
        self.resolver = resolver
        service = resolver.doResolve(
            Service.self,
            named: name,
            arguments: (resolver, arg1, arg2, arg3, arg4, arg5, arg6)
        )
    }

    public init<Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7>(
        resolver: Resolver = .main,
        name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4, _ arg5: Arg5, _ arg6: Arg6, _ arg7: Arg7
    ) {
        self.resolver = resolver
        service = resolver.doResolve(
            Service.self,
            named: name,
            arguments: (resolver, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
        )
    }

    public init<Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8>(
        resolver: Resolver = .main,
        name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4, _ arg5: Arg5, _ arg6: Arg6, _ arg7: Arg7,
        _ arg8: Arg8
    ) {
        self.resolver = resolver
        service = resolver.doResolve(
            Service.self,
            named: name,
            arguments: (resolver, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
        )
    }

    public init<Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9>(
        resolver: Resolver = .main,
        name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4, _ arg5: Arg5, _ arg6: Arg6, _ arg7: Arg7,
        _ arg8: Arg8, _ arg9: Arg9
    ) {
        self.resolver = resolver
        service = resolver.doResolve(
            Service.self,
            named: name,
            arguments: (resolver, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
        )
    }

    public init<Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9, Arg10>(
        resolver: Resolver = .main,
        name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4, _ arg5: Arg5, _ arg6: Arg6, _ arg7: Arg7,
        _ arg8: Arg8, _ arg9: Arg9, _ arg10: Arg10
    ) {
        self.resolver = resolver
        service = resolver.doResolve(
            Service.self,
            named: name,
            arguments: (resolver, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
        )
    }
}
