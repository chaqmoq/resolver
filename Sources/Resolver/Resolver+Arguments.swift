extension Resolver {
    @discardableResult
    public static func register<Service, Arg1>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = defaultScope,
        factory: @escaping (Resolver, Arg1) -> Service
    ) -> Resolver {
        main.register(type, named: name, scoped: scope, factory: factory)
    }

    @discardableResult
    public static func register<Service, Arg1, Arg2>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = defaultScope,
        factory: @escaping (Resolver, Arg1, Arg2) -> Service
    ) -> Resolver {
        main.register(type, named: name, scoped: scope, factory: factory)
    }

    @discardableResult
    public static func register<Service, Arg1, Arg2, Arg3>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = defaultScope,
        factory: @escaping (Resolver, Arg1, Arg2, Arg3) -> Service
    ) -> Resolver {
        main.register(type, named: name, scoped: scope, factory: factory)
    }

    @discardableResult
    public static func register<Service, Arg1, Arg2, Arg3, Arg4>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = defaultScope,
        factory: @escaping (Resolver, Arg1, Arg2, Arg3, Arg4) -> Service
    ) -> Resolver {
        main.register(type, named: name, scoped: scope, factory: factory)
    }

    @discardableResult
    public static func register<Service, Arg1, Arg2, Arg3, Arg4, Arg5>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = defaultScope,
        factory: @escaping (Resolver, Arg1, Arg2, Arg3, Arg4, Arg5) -> Service
    ) -> Resolver {
        main.register(type, named: name, scoped: scope, factory: factory)
    }

    @discardableResult
    public static func register<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = defaultScope,
        factory: @escaping (Resolver, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6) -> Service
    ) -> Resolver {
        main.register(type, named: name, scoped: scope, factory: factory)
    }

    @discardableResult
    public static func register<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = defaultScope,
        factory: @escaping (Resolver, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7) -> Service
    ) -> Resolver {
        main.register(type, named: name, scoped: scope, factory: factory)
    }

    @discardableResult
    public static func register<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = defaultScope,
        factory: @escaping (Resolver, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8) -> Service
    ) -> Resolver {
        main.register(type, named: name, scoped: scope, factory: factory)
    }

    @discardableResult
    public static func register<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = defaultScope,
        factory: @escaping (Resolver, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9) -> Service
    ) -> Resolver {
        main.register(type, named: name, scoped: scope, factory: factory)
    }

    @discardableResult
    public static func register<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9, Arg10>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = defaultScope,
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
        scoped scope: Scope = defaultScope,
        factory: @escaping (Resolver, Arg1) -> Service
    ) -> Self {
        doRegister(type, named: name, scoped: scope, factory: factory)
        return self
    }

    @discardableResult
    public func register<Service, Arg1, Arg2>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = defaultScope,
        factory: @escaping (Resolver, Arg1, Arg2) -> Service
    ) -> Self {
        doRegister(type, named: name, scoped: scope, factory: factory)
        return self
    }

    @discardableResult
    public func register<Service, Arg1, Arg2, Arg3>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = defaultScope,
        factory: @escaping (Resolver, Arg1, Arg2, Arg3) -> Service
    ) -> Self {
        doRegister(type, named: name, scoped: scope, factory: factory)
        return self
    }

    @discardableResult
    public func register<Service, Arg1, Arg2, Arg3, Arg4>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = defaultScope,
        factory: @escaping (Resolver, Arg1, Arg2, Arg3, Arg4) -> Service
    ) -> Self {
        doRegister(type, named: name, scoped: scope, factory: factory)
        return self
    }

    @discardableResult
    public func register<Service, Arg1, Arg2, Arg3, Arg4, Arg5>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = defaultScope,
        factory: @escaping (Resolver, Arg1, Arg2, Arg3, Arg4, Arg5) -> Service
    ) -> Self {
        doRegister(type, named: name, scoped: scope, factory: factory)
        return self
    }

    @discardableResult
    public func register<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = defaultScope,
        factory: @escaping (Resolver, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6) -> Service
    ) -> Self {
        doRegister(type, named: name, scoped: scope, factory: factory)
        return self
    }

    @discardableResult
    public func register<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = defaultScope,
        factory: @escaping (Resolver, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7) -> Service
    ) -> Self {
        doRegister(type, named: name, scoped: scope, factory: factory)
        return self
    }

    @discardableResult
    public func register<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = defaultScope,
        factory: @escaping (Resolver, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8) -> Service
    ) -> Self {
        doRegister(type, named: name, scoped: scope, factory: factory)
        return self
    }

    @discardableResult
    public func register<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = defaultScope,
        factory: @escaping (Resolver, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9) -> Service
    ) -> Self {
        doRegister(type, named: name, scoped: scope, factory: factory)
        return self
    }

    @discardableResult
    public func register<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9, Arg10>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = defaultScope,
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
        main.resolve(type, named: name, arguments: arg1)
    }

    public static func resolve<Service, Arg1, Arg2>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2
    ) -> Service? {
        main.resolve(type, named: name, arguments: arg1, arg2)
    }

    public static func resolve<Service, Arg1, Arg2, Arg3>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3
    ) -> Service? {
        main.resolve(type, named: name, arguments: arg1, arg2, arg3)
    }

    public static func resolve<Service, Arg1, Arg2, Arg3, Arg4>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4
    ) -> Service? {
        main.resolve(type, named: name, arguments: arg1, arg2, arg3, arg4)
    }

    public static func resolve<Service, Arg1, Arg2, Arg3, Arg4, Arg5>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4, _ arg5: Arg5
    ) -> Service? {
        main.resolve(type, named: name, arguments: arg1, arg2, arg3, arg4, arg5)
    }

    public static func resolve<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4, _ arg5: Arg5, _ arg6: Arg6
    ) -> Service? {
        main.resolve(type, named: name, arguments: arg1, arg2, arg3, arg4, arg5, arg6)
    }

    public static func resolve<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4, _ arg5: Arg5, _ arg6: Arg6, _ arg7: Arg7
    ) -> Service? {
        main.resolve(type, named: name, arguments: arg1, arg2, arg3, arg4, arg5, arg6, arg7)
    }

    public static func resolve<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4, _ arg5: Arg5, _ arg6: Arg6, _ arg7: Arg7,
        _ arg8: Arg8
    ) -> Service? {
        main.resolve(type, named: name, arguments: arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
    }

    public static func resolve<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4, _ arg5: Arg5, _ arg6: Arg6, _ arg7: Arg7,
        _ arg8: Arg8, _ arg9: Arg9
    ) -> Service? {
        main.resolve(type, named: name, arguments: arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
    }

    public static func resolve<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9, Arg10>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4, _ arg5: Arg5, _ arg6: Arg6, _ arg7: Arg7,
        _ arg8: Arg8, _ arg9: Arg9, _ arg10: Arg10
    ) -> Service? {
        main.resolve(type, named: name, arguments: arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
    }
}

extension Resolver {
    public func resolve<Service, Arg1>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1
    ) -> Service? {
        doResolve(type, named: name, arguments: (self, arg1))
    }

    public func resolve<Service, Arg1, Arg2>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2
    ) -> Service? {
        doResolve(type, named: name, arguments: (self, arg1, arg2))
    }

    public func resolve<Service, Arg1, Arg2, Arg3>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3
    ) -> Service? {
        doResolve(type, named: name, arguments: (self, arg1, arg2, arg3))
    }

    public func resolve<Service, Arg1, Arg2, Arg3, Arg4>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4
    ) -> Service? {
        doResolve(type, named: name, arguments: (self, arg1, arg2, arg3, arg4))
    }

    public func resolve<Service, Arg1, Arg2, Arg3, Arg4, Arg5>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4, _ arg5: Arg5
    ) -> Service? {
        doResolve(type, named: name, arguments: (self, arg1, arg2, arg3, arg4, arg5))
    }

    public func resolve<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4, _ arg5: Arg5, _ arg6: Arg6
    ) -> Service? {
        doResolve(type, named: name, arguments: (self, arg1, arg2, arg3, arg4, arg5, arg6))
    }

    public func resolve<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4, _ arg5: Arg5, _ arg6: Arg6, _ arg7: Arg7
    ) -> Service? {
        doResolve(type, named: name, arguments: (self, arg1, arg2, arg3, arg4, arg5, arg6, arg7))
    }

    public func resolve<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4, _ arg5: Arg5, _ arg6: Arg6, _ arg7: Arg7,
        _ arg8: Arg8
    ) -> Service? {
        doResolve(type, named: name, arguments: (self, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
    }

    public func resolve<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4, _ arg5: Arg5, _ arg6: Arg6, _ arg7: Arg7,
        _ arg8: Arg8, _ arg9: Arg9
    ) -> Service? {
        doResolve(type, named: name, arguments: (self, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9))
    }

    public func resolve<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9, Arg10>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4, _ arg5: Arg5, _ arg6: Arg6, _ arg7: Arg7,
        _ arg8: Arg8, _ arg9: Arg9, _ arg10: Arg10
    ) -> Service? {
        doResolve(
            type,
            named: name,
            arguments: (self, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
        )
    }
}
