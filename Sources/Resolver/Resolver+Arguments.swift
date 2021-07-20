extension Resolver {
    @discardableResult
    public static func register<Service, Arg1>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = .graph,
        factory: @escaping (Resolver, Arg1) -> Service
    ) -> Resolver {
        main.register(type, named: name, scoped: scope, factory: factory)
    }

    @discardableResult
    public static func register<Service, Arg1, Arg2>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = .graph,
        factory: @escaping (Resolver, Arg1, Arg2) -> Service
    ) -> Resolver {
        main.register(type, named: name, scoped: scope, factory: factory)
    }

    @discardableResult
    public static func register<Service, Arg1, Arg2, Arg3>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = .graph,
        factory: @escaping (Resolver, Arg1, Arg2, Arg3) -> Service
    ) -> Resolver {
        main.register(type, named: name, scoped: scope, factory: factory)
    }

    @discardableResult
    public static func register<Service, Arg1, Arg2, Arg3, Arg4>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = .graph,
        factory: @escaping (Resolver, Arg1, Arg2, Arg3, Arg4) -> Service
    ) -> Resolver {
        main.register(type, named: name, scoped: scope, factory: factory)
    }

    @discardableResult
    public static func register<Service, Arg1, Arg2, Arg3, Arg4, Arg5>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = .graph,
        factory: @escaping (Resolver, Arg1, Arg2, Arg3, Arg4, Arg5) -> Service
    ) -> Resolver {
        main.register(type, named: name, scoped: scope, factory: factory)
    }

    @discardableResult
    public static func register<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = .graph,
        factory: @escaping (Resolver, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6) -> Service
    ) -> Resolver {
        main.register(type, named: name, scoped: scope, factory: factory)
    }

    @discardableResult
    public static func register<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = .graph,
        factory: @escaping (Resolver, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7) -> Service
    ) -> Resolver {
        main.register(type, named: name, scoped: scope, factory: factory)
    }

    @discardableResult
    public static func register<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = .graph,
        factory: @escaping (Resolver, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8) -> Service
    ) -> Resolver {
        main.register(type, named: name, scoped: scope, factory: factory)
    }

    @discardableResult
    public static func register<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = .graph,
        factory: @escaping (Resolver, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9) -> Service
    ) -> Resolver {
        main.register(type, named: name, scoped: scope, factory: factory)
    }

    @discardableResult
    public static func register<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9, Arg10>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = .graph,
        factory: @escaping (Resolver, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9, Arg10) -> Service
    ) -> Resolver {
        main.register(type, named: name, scoped: scope, factory: factory)
    }
}

extension Resolver {
    @discardableResult
    public func register<Service, Arg1>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = .graph,
        factory: @escaping (Resolver, Arg1) -> Service
    ) -> Self {
        doRegister(type, named: name, scoped: scope, factory: factory)
        return self
    }

    @discardableResult
    public func register<Service, Arg1, Arg2>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = .graph,
        factory: @escaping (Resolver, Arg1, Arg2) -> Service
    ) -> Self {
        doRegister(type, named: name, scoped: scope, factory: factory)
        return self
    }

    @discardableResult
    public func register<Service, Arg1, Arg2, Arg3>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = .graph,
        factory: @escaping (Resolver, Arg1, Arg2, Arg3) -> Service
    ) -> Self {
        doRegister(type, named: name, scoped: scope, factory: factory)
        return self
    }

    @discardableResult
    public func register<Service, Arg1, Arg2, Arg3, Arg4>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = .graph,
        factory: @escaping (Resolver, Arg1, Arg2, Arg3, Arg4) -> Service
    ) -> Self {
        doRegister(type, named: name, scoped: scope, factory: factory)
        return self
    }

    @discardableResult
    public func register<Service, Arg1, Arg2, Arg3, Arg4, Arg5>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = .graph,
        factory: @escaping (Resolver, Arg1, Arg2, Arg3, Arg4, Arg5) -> Service
    ) -> Self {
        doRegister(type, named: name, scoped: scope, factory: factory)
        return self
    }

    @discardableResult
    public func register<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = .graph,
        factory: @escaping (Resolver, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6) -> Service
    ) -> Self {
        doRegister(type, named: name, scoped: scope, factory: factory)
        return self
    }

    @discardableResult
    public func register<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = .graph,
        factory: @escaping (Resolver, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7) -> Service
    ) -> Self {
        doRegister(type, named: name, scoped: scope, factory: factory)
        return self
    }

    @discardableResult
    public func register<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = .graph,
        factory: @escaping (Resolver, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8) -> Service
    ) -> Self {
        doRegister(type, named: name, scoped: scope, factory: factory)
        return self
    }

    @discardableResult
    public func register<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = .graph,
        factory: @escaping (Resolver, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9) -> Service
    ) -> Self {
        doRegister(type, named: name, scoped: scope, factory: factory)
        return self
    }

    @discardableResult
    public func register<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9, Arg10>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = .graph,
        factory: @escaping (Resolver, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9, Arg10) -> Service
    ) -> Self {
        doRegister(type, named: name, scoped: scope, factory: factory)
        return self
    }
}

extension Resolver {
    public static func resolve<Service, Arg1>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1
    ) -> Service? {
        main.resolve(type, named: name, arguments: (self, arg1)) { _ in }
    }

    public static func resolve<Service, Arg1, Arg2>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2
    ) -> Service? {
        main.resolve(type, named: name, arguments: (self, arg1, arg2)) { _ in }
    }

    public static func resolve<Service, Arg1, Arg2, Arg3>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3
    ) -> Service? {
        main.resolve(type, named: name, arguments: (self, arg1, arg2, arg3)) { _ in }
    }

    public static func resolve<Service, Arg1, Arg2, Arg3, Arg4>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4
    ) -> Service? {
        main.resolve(type, named: name, arguments: (self, arg1, arg2, arg3, arg4)) { _ in }
    }

    public static func resolve<Service, Arg1, Arg2, Arg3, Arg4, Arg5>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4, _ arg5: Arg5
    ) -> Service? {
        main.resolve(type, named: name, arguments: (self, arg1, arg2, arg3, arg4, arg5)) { _ in }
    }

    public static func resolve<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4, _ arg5: Arg5, _ arg6: Arg6
    ) -> Service? {
        main.resolve(type, named: name, arguments: (self, arg1, arg2, arg3, arg4, arg5, arg6)) { _ in }
    }
}

extension Resolver {
    public func resolve<Service, Arg1>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1
    ) -> Service? {
        resolve(type, named: name, arguments: (self, arg1)) { _ in }
    }

    public func resolve<Service, Arg1, Arg2>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2
    ) -> Service? {
        resolve(type, named: name, arguments: (self, arg1, arg2)) { _ in }
    }

    public func resolve<Service, Arg1, Arg2, Arg3>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3
    ) -> Service? {
        resolve(type, named: name, arguments: (self, arg1, arg2, arg3)) { _ in }
    }

    public func resolve<Service, Arg1, Arg2, Arg3, Arg4>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4
    ) -> Service? {
        resolve(type, named: name, arguments: (self, arg1, arg2, arg3, arg4)) { _ in }
    }

    public func resolve<Service, Arg1, Arg2, Arg3, Arg4, Arg5>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4, _ arg5: Arg5
    ) -> Service? {
        resolve(type, named: name, arguments: (self, arg1, arg2, arg3, arg4, arg5)) { _ in }
    }

    public func resolve<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4, _ arg5: Arg5, _ arg6: Arg6
    ) -> Service? {
        resolve(type, named: name, arguments: (self, arg1, arg2, arg3, arg4, arg5, arg6)) { _ in }
    }

    public func resolve<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4, _ arg5: Arg5, _ arg6: Arg6, _ arg7: Arg7
    ) -> Service? {
        resolve(type, named: name, arguments: (self, arg1, arg2, arg3, arg4, arg5, arg6, arg7)) { _ in }
    }

    public func resolve<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4, _ arg5: Arg5, _ arg6: Arg6, _ arg7: Arg7,
        _ arg8: Arg8
    ) -> Service? {
        resolve(type, named: name, arguments: (self, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)) { _ in }
    }

    public func resolve<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4, _ arg5: Arg5, _ arg6: Arg6, _ arg7: Arg7,
        _ arg8: Arg8, _ arg9: Arg9
    ) -> Service? {
        resolve(type, named: name, arguments: (self, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)) { _ in }
    }

    public func resolve<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9, Arg10>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4, _ arg5: Arg5, _ arg6: Arg6, _ arg7: Arg7,
        _ arg8: Arg8, _ arg9: Arg9, _ arg10: Arg10
    ) -> Service? {
        resolve(
            type,
            named: name,
            arguments: (self, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
        ) { _ in }
    }
}
