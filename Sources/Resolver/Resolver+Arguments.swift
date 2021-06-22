extension Resolver {
    public func register<Service, Arg1>(
        _ serviceType: Service.Type = Service.self,
        name: String? = nil,
        serviceFactory: @escaping (Resolver, Arg1) -> Service
    ) {
        _register(serviceType, name: name, serviceFactory: serviceFactory)
    }

    public func register<Service, Arg1, Arg2>(
        _ serviceType: Service.Type = Service.self,
        name: String? = nil,
        serviceFactory: @escaping (Resolver, Arg1, Arg2) -> Service
    ) {
        _register(serviceType, name: name, serviceFactory: serviceFactory)
    }

    public func register<Service, Arg1, Arg2, Arg3>(
        _ serviceType: Service.Type = Service.self,
        name: String? = nil,
        serviceFactory: @escaping (Resolver, Arg1, Arg2, Arg3) -> Service
    ) {
        _register(serviceType, name: name, serviceFactory: serviceFactory)
    }

    public func register<Service, Arg1, Arg2, Arg3, Arg4>(
        _ serviceType: Service.Type = Service.self,
        name: String? = nil,
        serviceFactory: @escaping (Resolver, Arg1, Arg2, Arg3, Arg4) -> Service
    ) {
        _register(serviceType, name: name, serviceFactory: serviceFactory)
    }

    public func register<Service, Arg1, Arg2, Arg3, Arg4, Arg5>(
        _ serviceType: Service.Type = Service.self,
        name: String? = nil,
        serviceFactory: @escaping (Resolver, Arg1, Arg2, Arg3, Arg4, Arg5) -> Service
    ) {
        _register(serviceType, name: name, serviceFactory: serviceFactory)
    }

    public func register<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6>(
        _ serviceType: Service.Type = Service.self,
        name: String? = nil,
        serviceFactory: @escaping (Resolver, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6) -> Service
    ) {
        _register(serviceType, name: name, serviceFactory: serviceFactory)
    }

    public func register<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7>(
        _ serviceType: Service.Type = Service.self,
        name: String? = nil,
        serviceFactory: @escaping (Resolver, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7) -> Service
    ) {
        _register(serviceType, name: name, serviceFactory: serviceFactory)
    }

    public func register<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8>(
        _ serviceType: Service.Type = Service.self,
        name: String? = nil,
        serviceFactory: @escaping (Resolver, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8) -> Service
    ) {
        _register(serviceType, name: name, serviceFactory: serviceFactory)
    }

    public func register<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9>(
        _ serviceType: Service.Type = Service.self,
        name: String? = nil,
        serviceFactory: @escaping (Resolver, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9) -> Service
    ) {
        _register(serviceType, name: name, serviceFactory: serviceFactory)
    }

    public func register<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9, Arg10>(
        _ serviceType: Service.Type = Service.self,
        name: String? = nil,
        serviceFactory: @escaping (Resolver, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9, Arg10) -> Service
    ) {
        _register(serviceType, name: name, serviceFactory: serviceFactory)
    }
}
