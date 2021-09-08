/// Injects and resolves a service immediately.
@propertyWrapper
public struct Injected<Service> {
    /// A wrapped value.
    public var wrappedValue: Service {
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
    private var service: Service

    /// Initializes a new instance of a service.
    ///
    /// - Parameters:
    ///   - resolver: An instance of `Resolver`.  Defaults to `main`.
    ///   - name: The name of a service. Defaults to `nil`.
    public init(resolver: Resolver = .main, name: String? = nil) {
        self.resolver = resolver
        service = resolver.resolve(Service.self, named: name)!
    }

    /// Initializes a new instance of a service with one argument.
    ///
    /// - Parameters:
    ///   - resolver: An instance of `Resolver`.  Defaults to `main`.
    ///   - name: The name of a service. Defaults to `nil`.
    ///   - arg1: The first argument of a service.
    public init<Arg1>(resolver: Resolver = .main, name: String? = nil, arguments arg1: Arg1) {
        self.resolver = resolver
        service = resolver.doResolve(Service.self, named: name, arguments: (resolver, arg1))!
    }

    /// Initializes a new instance of a service with two arguments.
    ///
    /// - Parameters:
    ///   - resolver: An instance of `Resolver`.  Defaults to `main`.
    ///   - name: The name of a service. Defaults to `nil`.
    ///   - arg1: The first argument of a service.
    ///   - arg2: The second argument of a service.
    public init<Arg1, Arg2>(resolver: Resolver = .main, name: String? = nil, arguments arg1: Arg1, _ arg2: Arg2) {
        self.resolver = resolver
        service = resolver.doResolve(Service.self, named: name, arguments: (resolver, arg1, arg2))!
    }

    /// Initializes a new instance of a service with three arguments.
    ///
    /// - Parameters:
    ///   - resolver: An instance of `Resolver`.  Defaults to `main`.
    ///   - name: The name of a service. Defaults to `nil`.
    ///   - arg1: The first argument of a service.
    ///   - arg2: The second argument of a service.
    ///   - arg3: The third argument of a service.
    public init<Arg1, Arg2, Arg3>(
        resolver: Resolver = .main,
        name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3
    ) {
        self.resolver = resolver
        service = resolver.doResolve(Service.self, named: name, arguments: (resolver, arg1, arg2, arg3))!
    }

    /// Initializes a new instance of a service with four arguments.
    ///
    /// - Parameters:
    ///   - resolver: An instance of `Resolver`.  Defaults to `main`.
    ///   - name: The name of a service. Defaults to `nil`.
    ///   - arg1: The first argument of a service.
    ///   - arg2: The second argument of a service.
    ///   - arg3: The third argument of a service.
    ///   - arg4: The fourth argument of a service.
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
        )!
    }

    /// Initializes a new instance of a service with five arguments.
    ///
    /// - Parameters:
    ///   - resolver: An instance of `Resolver`.  Defaults to `main`.
    ///   - name: The name of a service. Defaults to `nil`.
    ///   - arg1: The first argument of a service.
    ///   - arg2: The second argument of a service.
    ///   - arg3: The third argument of a service.
    ///   - arg4: The fourth argument of a service.
    ///   - arg5: The fifth argument of a service.
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
        )!
    }

    /// Initializes a new instance of a service with six arguments.
    ///
    /// - Parameters:
    ///   - resolver: An instance of `Resolver`.  Defaults to `main`.
    ///   - name: The name of a service. Defaults to `nil`.
    ///   - arg1: The first argument of a service.
    ///   - arg2: The second argument of a service.
    ///   - arg3: The third argument of a service.
    ///   - arg4: The fourth argument of a service.
    ///   - arg5: The fifth argument of a service.
    ///   - arg6: The sixth argument of a service.
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
        )!
    }

    /// Initializes a new instance of a service with seven arguments.
    ///
    /// - Parameters:
    ///   - resolver: An instance of `Resolver`.  Defaults to `main`.
    ///   - name: The name of a service. Defaults to `nil`.
    ///   - arg1: The first argument of a service.
    ///   - arg2: The second argument of a service.
    ///   - arg3: The third argument of a service.
    ///   - arg4: The fourth argument of a service.
    ///   - arg5: The fifth argument of a service.
    ///   - arg6: The sixth argument of a service.
    ///   - arg7: The seventh argument of a service.
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
        )!
    }

    /// Initializes a new instance of a service with eight arguments.
    ///
    /// - Parameters:
    ///   - resolver: An instance of `Resolver`.  Defaults to `main`.
    ///   - name: The name of a service. Defaults to `nil`.
    ///   - arg1: The first argument of a service.
    ///   - arg2: The second argument of a service.
    ///   - arg3: The third argument of a service.
    ///   - arg4: The fourth argument of a service.
    ///   - arg5: The fifth argument of a service.
    ///   - arg6: The sixth argument of a service.
    ///   - arg7: The seventh argument of a service.
    ///   - arg8: The eighth argument of a service.
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
        )!
    }

    /// Initializes a new instance of a service with nine arguments.
    ///
    /// - Parameters:
    ///   - resolver: An instance of `Resolver`.  Defaults to `main`.
    ///   - name: The name of a service. Defaults to `nil`.
    ///   - arg1: The first argument of a service.
    ///   - arg2: The second argument of a service.
    ///   - arg3: The third argument of a service.
    ///   - arg4: The fourth argument of a service.
    ///   - arg5: The fifth argument of a service.
    ///   - arg6: The sixth argument of a service.
    ///   - arg7: The seventh argument of a service.
    ///   - arg8: The eighth argument of a service.
    ///   - arg9: The ninth argument of a service.
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
        )!
    }

    /// Initializes a new instance of a service with ten arguments.
    ///
    /// - Parameters:
    ///   - resolver: An instance of `Resolver`.  Defaults to `main`.
    ///   - name: The name of a service. Defaults to `nil`.
    ///   - arg1: The first argument of a service.
    ///   - arg2: The second argument of a service.
    ///   - arg3: The third argument of a service.
    ///   - arg4: The fourth argument of a service.
    ///   - arg5: The fifth argument of a service.
    ///   - arg6: The sixth argument of a service.
    ///   - arg7: The seventh argument of a service.
    ///   - arg8: The eighth argument of a service.
    ///   - arg9: The ninth argument of a service.
    ///   - arg10: The tenth argument of a service.
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
        )!
    }
}
