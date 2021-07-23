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

    public init<Arg1, Arg2, Arg3, Arg4, Arg5>(
        resolver: Resolver = .main,
        name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4, _ arg5: Arg5
    ) {
        service = resolver.doResolve(
            Service.self,
            named: name,
            arguments: (resolver, arg1, arg2, arg3, arg4, arg5)
        ) { _ in }!
    }

    public init<Arg1, Arg2, Arg3, Arg4, Arg5, Arg6>(
        resolver: Resolver = .main,
        name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4, _ arg5: Arg5, _ arg6: Arg6
    ) {
        service = resolver.doResolve(
            Service.self,
            named: name,
            arguments: (resolver, arg1, arg2, arg3, arg4, arg5, arg6)
        ) { _ in }!
    }

    public init<Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7>(
        resolver: Resolver = .main,
        name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4, _ arg5: Arg5, _ arg6: Arg6, _ arg7: Arg7
    ) {
        service = resolver.doResolve(
            Service.self,
            named: name,
            arguments: (resolver, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
        ) { _ in }!
    }

    public init<Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8>(
        resolver: Resolver = .main,
        name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4, _ arg5: Arg5, _ arg6: Arg6, _ arg7: Arg7,
        _ arg8: Arg8
    ) {
        service = resolver.doResolve(
            Service.self,
            named: name,
            arguments: (resolver, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
        ) { _ in }!
    }

    public init<Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9>(
        resolver: Resolver = .main,
        name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4, _ arg5: Arg5, _ arg6: Arg6, _ arg7: Arg7,
        _ arg8: Arg8, _ arg9: Arg9
    ) {
        service = resolver.doResolve(
            Service.self,
            named: name,
            arguments: (resolver, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
        ) { _ in }!
    }

    public init<Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9, Arg10>(
        resolver: Resolver = .main,
        name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4, _ arg5: Arg5, _ arg6: Arg6, _ arg7: Arg7,
        _ arg8: Arg8, _ arg9: Arg9, _ arg10: Arg10
    ) {
        service = resolver.doResolve(
            Service.self,
            named: name,
            arguments: (resolver, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
        ) { _ in }!
    }
}
