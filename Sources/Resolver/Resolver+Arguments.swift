extension Resolver {
    public func register<Service, Arg1>(
        _ serviceType: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = .graph,
        serviceFactory: @escaping (Resolver, Arg1) -> Service
    ) {
        _register(serviceType, named: name, scoped: scope, serviceFactory: serviceFactory)
    }

    public func register<Service, Arg1, Arg2>(
        _ serviceType: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = .graph,
        serviceFactory: @escaping (Resolver, Arg1, Arg2) -> Service
    ) {
        _register(serviceType, named: name, scoped: scope, serviceFactory: serviceFactory)
    }

    public func register<Service, Arg1, Arg2, Arg3>(
        _ serviceType: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = .graph,
        serviceFactory: @escaping (Resolver, Arg1, Arg2, Arg3) -> Service
    ) {
        _register(serviceType, named: name, scoped: scope, serviceFactory: serviceFactory)
    }

    public func register<Service, Arg1, Arg2, Arg3, Arg4>(
        _ serviceType: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = .graph,
        serviceFactory: @escaping (Resolver, Arg1, Arg2, Arg3, Arg4) -> Service
    ) {
        _register(serviceType, named: name, scoped: scope, serviceFactory: serviceFactory)
    }

    public func register<Service, Arg1, Arg2, Arg3, Arg4, Arg5>(
        _ serviceType: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = .graph,
        serviceFactory: @escaping (Resolver, Arg1, Arg2, Arg3, Arg4, Arg5) -> Service
    ) {
        _register(serviceType, named: name, scoped: scope, serviceFactory: serviceFactory)
    }

    public func register<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6>(
        _ serviceType: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = .graph,
        serviceFactory: @escaping (Resolver, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6) -> Service
    ) {
        _register(serviceType, named: name, scoped: scope, serviceFactory: serviceFactory)
    }

    public func register<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7>(
        _ serviceType: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = .graph,
        serviceFactory: @escaping (Resolver, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7) -> Service
    ) {
        _register(serviceType, named: name, scoped: scope, serviceFactory: serviceFactory)
    }

    public func register<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8>(
        _ serviceType: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = .graph,
        serviceFactory: @escaping (Resolver, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8) -> Service
    ) {
        _register(serviceType, named: name, scoped: scope, serviceFactory: serviceFactory)
    }

    public func register<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9>(
        _ serviceType: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = .graph,
        serviceFactory: @escaping (Resolver, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9) -> Service
    ) {
        _register(serviceType, named: name, scoped: scope, serviceFactory: serviceFactory)
    }

    public func register<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9, Arg10>(
        _ serviceType: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = .graph,
        serviceFactory: @escaping (Resolver, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9, Arg10) -> Service
    ) {
        _register(serviceType, named: name, scoped: scope, serviceFactory: serviceFactory)
    }
}

extension Resolver {
    public func resolve<Service, Arg1>(
        _ serviceType: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1
    ) -> Service? {
        let arguments = (self, arg1)
        typealias ServiceFactory = ((Resolver, Arg1)) -> Service

        return resolve(serviceType, named: name, arguments: arguments) { (serviceFactory: ServiceFactory) in }
    }

    public func resolve<Service, Arg1, Arg2>(
        _ serviceType: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2
    ) -> Service? {
        let arguments = (self, arg1, arg2)
        typealias ServiceFactory = ((Resolver, Arg1, Arg2)) -> Service

        return resolve(serviceType, named: name, arguments: arguments) { (serviceFactory: ServiceFactory) in }
    }

    public func resolve<Service, Arg1, Arg2, Arg3>(
        _ serviceType: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3
    ) -> Service? {
        let arguments = (self, arg1, arg2, arg3)
        typealias ServiceFactory = ((Resolver, Arg1, Arg2, Arg3)) -> Service

        return resolve(serviceType, named: name, arguments: arguments) { (serviceFactory: ServiceFactory) in }
    }

    public func resolve<Service, Arg1, Arg2, Arg3, Arg4>(
        _ serviceType: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4
    ) -> Service? {
        let arguments = (self, arg1, arg2, arg3, arg4)
        typealias ServiceFactory = ((Resolver, Arg1, Arg2, Arg3, Arg4)) -> Service

        return resolve(serviceType, named: name, arguments: arguments) { (serviceFactory: ServiceFactory) in }
    }

    public func resolve<Service, Arg1, Arg2, Arg3, Arg4, Arg5>(
        _ serviceType: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4, _ arg5: Arg5
    ) -> Service? {
        let arguments = (self, arg1, arg2, arg3, arg4, arg5)
        typealias ServiceFactory = ((Resolver, Arg1, Arg2, Arg3, Arg4, Arg5)) -> Service

        return resolve(serviceType, named: name, arguments: arguments) { (serviceFactory: ServiceFactory) in }
    }

    public func resolve<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6>(
        _ serviceType: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4, _ arg5: Arg5, _ arg6: Arg6
    ) -> Service? {
        let arguments = (self, arg1, arg2, arg3, arg4, arg5, arg6)
        typealias ServiceFactory = ((Resolver, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6)) -> Service

        return resolve(serviceType, named: name, arguments: arguments) { (serviceFactory: ServiceFactory) in }
    }

    public func resolve<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7>(
        _ serviceType: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4, _ arg5: Arg5, _ arg6: Arg6, _ arg7: Arg7
    ) -> Service? {
        let arguments = (self, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
        typealias ServiceFactory = ((Resolver, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7)) -> Service

        return resolve(serviceType, named: name, arguments: arguments) { (serviceFactory: ServiceFactory) in }
    }

    public func resolve<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8>(
        _ serviceType: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4, _ arg5: Arg5, _ arg6: Arg6, _ arg7: Arg7,
        _ arg8: Arg8
    ) -> Service? {
        let arguments = (self, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
        typealias ServiceFactory = ((Resolver, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8)) -> Service

        return resolve(serviceType, named: name, arguments: arguments) { (serviceFactory: ServiceFactory) in }
    }

    public func resolve<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9>(
        _ serviceType: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4, _ arg5: Arg5, _ arg6: Arg6, _ arg7: Arg7,
        _ arg8: Arg8, _ arg9: Arg9
    ) -> Service? {
        let arguments = (self, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
        typealias ServiceFactory = ((Resolver, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9)) -> Service

        return resolve(serviceType, named: name, arguments: arguments) { (serviceFactory: ServiceFactory) in }
    }

    public func resolve<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9, Arg10>(
        _ serviceType: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4, _ arg5: Arg5, _ arg6: Arg6, _ arg7: Arg7,
        _ arg8: Arg8, _ arg9: Arg9, _ arg10: Arg10
    ) -> Service? {
        let arguments = (self, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
        typealias ServiceFactory = ((Resolver, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9, Arg10)) -> Service

        return resolve(serviceType, named: name, arguments: arguments) { (serviceFactory: ServiceFactory) in }
    }
}
