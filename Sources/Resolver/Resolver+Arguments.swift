extension Resolver {
    public func register<Service, Arg1>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = .graph,
        factory: @escaping (Resolver, Arg1) -> Service
    ) {
        _register(type, named: name, scoped: scope, factory: factory)
    }

    public func register<Service, Arg1, Arg2>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = .graph,
        factory: @escaping (Resolver, Arg1, Arg2) -> Service
    ) {
        _register(type, named: name, scoped: scope, factory: factory)
    }

    public func register<Service, Arg1, Arg2, Arg3>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = .graph,
        factory: @escaping (Resolver, Arg1, Arg2, Arg3) -> Service
    ) {
        _register(type, named: name, scoped: scope, factory: factory)
    }

    public func register<Service, Arg1, Arg2, Arg3, Arg4>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = .graph,
        factory: @escaping (Resolver, Arg1, Arg2, Arg3, Arg4) -> Service
    ) {
        _register(type, named: name, scoped: scope, factory: factory)
    }

    public func register<Service, Arg1, Arg2, Arg3, Arg4, Arg5>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = .graph,
        factory: @escaping (Resolver, Arg1, Arg2, Arg3, Arg4, Arg5) -> Service
    ) {
        _register(type, named: name, scoped: scope, factory: factory)
    }

    public func register<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = .graph,
        factory: @escaping (Resolver, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6) -> Service
    ) {
        _register(type, named: name, scoped: scope, factory: factory)
    }

    public func register<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = .graph,
        factory: @escaping (Resolver, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7) -> Service
    ) {
        _register(type, named: name, scoped: scope, factory: factory)
    }

    public func register<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = .graph,
        factory: @escaping (Resolver, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8) -> Service
    ) {
        _register(type, named: name, scoped: scope, factory: factory)
    }

    public func register<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = .graph,
        factory: @escaping (Resolver, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9) -> Service
    ) {
        _register(type, named: name, scoped: scope, factory: factory)
    }

    public func register<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9, Arg10>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = .graph,
        factory: @escaping (Resolver, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9, Arg10) -> Service
    ) {
        _register(type, named: name, scoped: scope, factory: factory)
    }
}

extension Resolver {
    public func resolve<Service, Arg1>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1
    ) -> Service? {
        let arguments = (self, arg1)
        typealias Factory = ((Resolver, Arg1)) -> Service

        return resolve(type, named: name, arguments: arguments) { (factory: Factory) in }
    }

    public func resolve<Service, Arg1, Arg2>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2
    ) -> Service? {
        let arguments = (self, arg1, arg2)
        typealias Factory = ((Resolver, Arg1, Arg2)) -> Service

        return resolve(type, named: name, arguments: arguments) { (factory: Factory) in }
    }

    public func resolve<Service, Arg1, Arg2, Arg3>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3
    ) -> Service? {
        let arguments = (self, arg1, arg2, arg3)
        typealias Factory = ((Resolver, Arg1, Arg2, Arg3)) -> Service

        return resolve(type, named: name, arguments: arguments) { (factory: Factory) in }
    }

    public func resolve<Service, Arg1, Arg2, Arg3, Arg4>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4
    ) -> Service? {
        let arguments = (self, arg1, arg2, arg3, arg4)
        typealias Factory = ((Resolver, Arg1, Arg2, Arg3, Arg4)) -> Service

        return resolve(type, named: name, arguments: arguments) { (factory: Factory) in }
    }

    public func resolve<Service, Arg1, Arg2, Arg3, Arg4, Arg5>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4, _ arg5: Arg5
    ) -> Service? {
        let arguments = (self, arg1, arg2, arg3, arg4, arg5)
        typealias Factory = ((Resolver, Arg1, Arg2, Arg3, Arg4, Arg5)) -> Service

        return resolve(type, named: name, arguments: arguments) { (factory: Factory) in }
    }

    public func resolve<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4, _ arg5: Arg5, _ arg6: Arg6
    ) -> Service? {
        let arguments = (self, arg1, arg2, arg3, arg4, arg5, arg6)
        typealias Factory = ((Resolver, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6)) -> Service

        return resolve(type, named: name, arguments: arguments) { (factory: Factory) in }
    }

    public func resolve<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4, _ arg5: Arg5, _ arg6: Arg6, _ arg7: Arg7
    ) -> Service? {
        let arguments = (self, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
        typealias Factory = ((Resolver, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7)) -> Service

        return resolve(type, named: name, arguments: arguments) { (factory: Factory) in }
    }

    public func resolve<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4, _ arg5: Arg5, _ arg6: Arg6, _ arg7: Arg7,
        _ arg8: Arg8
    ) -> Service? {
        let arguments = (self, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
        typealias Factory = ((Resolver, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8)) -> Service

        return resolve(type, named: name, arguments: arguments) { (factory: Factory) in }
    }

    public func resolve<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4, _ arg5: Arg5, _ arg6: Arg6, _ arg7: Arg7,
        _ arg8: Arg8, _ arg9: Arg9
    ) -> Service? {
        let arguments = (self, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
        typealias Factory = ((Resolver, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9)) -> Service

        return resolve(type, named: name, arguments: arguments) { (factory: Factory) in }
    }

    public func resolve<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9, Arg10>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4, _ arg5: Arg5, _ arg6: Arg6, _ arg7: Arg7,
        _ arg8: Arg8, _ arg9: Arg9, _ arg10: Arg10
    ) -> Service? {
        let arguments = (self, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
        typealias Factory = ((Resolver, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9, Arg10)) -> Service

        return resolve(type, named: name, arguments: arguments) { (factory: Factory) in }
    }
}
