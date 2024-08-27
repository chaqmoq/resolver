extension Resolver {
    /// Registers a service with one argument.
    ///
    /// - Parameters:
    ///   - type: The type of a service. Defaults to the concrete type that is going to be initialized.
    ///   - name: The name of a service. Defaults to `nil`.
    ///   - scope: The scope of a service. Defaults to `defaultScope`.
    ///   - factory: A factory method that creates a new instance of a service.
    /// - Returns: The main `Resolver`.
    @discardableResult
    public static func register<Service, Arg1>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = defaultScope,
        factory: @escaping (Resolver, Arg1) -> Service
    ) -> Resolver {
        main.register(
            type,
            named: name,
            scoped: scope,
            factory: factory
        )
    }

    /// Registers a service with two arguments.
    ///
    /// - Parameters:
    ///   - type: The type of a service. Defaults to the concrete type that is going to be initialized.
    ///   - name: The name of a service. Defaults to `nil`.
    ///   - scope: The scope of a service. Defaults to `defaultScope`.
    ///   - factory: A factory method that creates a new instance of a service.
    /// - Returns: The main `Resolver`.
    @discardableResult
    public static func register<Service, Arg1, Arg2>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = defaultScope,
        factory: @escaping (Resolver, Arg1, Arg2) -> Service
    ) -> Resolver {
        main.register(
            type,
            named: name,
            scoped: scope,
            factory: factory
        )
    }

    /// Registers a service with three arguments.
    ///
    /// - Parameters:
    ///   - type: The type of a service. Defaults to the concrete type that is going to be initialized.
    ///   - name: The name of a service. Defaults to `nil`.
    ///   - scope: The scope of a service. Defaults to `defaultScope`.
    ///   - factory: A factory method that creates a new instance of a service.
    /// - Returns: The main `Resolver`.
    @discardableResult
    public static func register<Service, Arg1, Arg2, Arg3>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = defaultScope,
        factory: @escaping (Resolver, Arg1, Arg2, Arg3) -> Service
    ) -> Resolver {
        main.register(
            type,
            named: name,
            scoped: scope,
            factory: factory
        )
    }

    /// Registers a service with four arguments.
    ///
    /// - Parameters:
    ///   - type: The type of a service. Defaults to the concrete type that is going to be initialized.
    ///   - name: The name of a service. Defaults to `nil`.
    ///   - scope: The scope of a service. Defaults to `defaultScope`.
    ///   - factory: A factory method that creates a new instance of a service.
    /// - Returns: The main `Resolver`.
    @discardableResult
    public static func register<Service, Arg1, Arg2, Arg3, Arg4>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = defaultScope,
        factory: @escaping (Resolver, Arg1, Arg2, Arg3, Arg4) -> Service
    ) -> Resolver {
        main.register(
            type,
            named: name,
            scoped: scope,
            factory: factory
        )
    }

    /// Registers a service with five arguments.
    ///
    /// - Parameters:
    ///   - type: The type of a service. Defaults to the concrete type that is going to be initialized.
    ///   - name: The name of a service. Defaults to `nil`.
    ///   - scope: The scope of a service. Defaults to `defaultScope`.
    ///   - factory: A factory method that creates a new instance of a service.
    /// - Returns: The main `Resolver`.
    @discardableResult
    public static func register<Service, Arg1, Arg2, Arg3, Arg4, Arg5>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = defaultScope,
        factory: @escaping (Resolver, Arg1, Arg2, Arg3, Arg4, Arg5) -> Service
    ) -> Resolver {
        main.register(
            type,
            named: name,
            scoped: scope,
            factory: factory
        )
    }

    /// Registers a service with six arguments.
    ///
    /// - Parameters:
    ///   - type: The type of a service. Defaults to the concrete type that is going to be initialized.
    ///   - name: The name of a service. Defaults to `nil`.
    ///   - scope: The scope of a service. Defaults to `defaultScope`.
    ///   - factory: A factory method that creates a new instance of a service.
    /// - Returns: The main `Resolver`.
    @discardableResult
    public static func register<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = defaultScope,
        factory: @escaping (Resolver, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6) -> Service
    ) -> Resolver {
        main.register(
            type,
            named: name,
            scoped: scope,
            factory: factory
        )
    }

    /// Registers a service with seven arguments.
    ///
    /// - Parameters:
    ///   - type: The type of a service. Defaults to the concrete type that is going to be initialized.
    ///   - name: The name of a service. Defaults to `nil`.
    ///   - scope: The scope of a service. Defaults to `defaultScope`.
    ///   - factory: A factory method that creates a new instance of a service.
    /// - Returns: The main `Resolver`.
    @discardableResult
    public static func register<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = defaultScope,
        factory: @escaping (Resolver, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7) -> Service
    ) -> Resolver {
        main.register(
            type,
            named: name,
            scoped: scope,
            factory: factory
        )
    }

    /// Registers a service with eight arguments.
    ///
    /// - Parameters:
    ///   - type: The type of a service. Defaults to the concrete type that is going to be initialized.
    ///   - name: The name of a service. Defaults to `nil`.
    ///   - scope: The scope of a service. Defaults to `defaultScope`.
    ///   - factory: A factory method that creates a new instance of a service.
    /// - Returns: The main `Resolver`.
    @discardableResult
    public static func register<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = defaultScope,
        factory: @escaping (Resolver, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8) -> Service
    ) -> Resolver {
        main.register(
            type,
            named: name,
            scoped: scope,
            factory: factory
        )
    }

    /// Registers a service with nine arguments.
    ///
    /// - Parameters:
    ///   - type: The type of a service. Defaults to the concrete type that is going to be initialized.
    ///   - name: The name of a service. Defaults to `nil`.
    ///   - scope: The scope of a service. Defaults to `defaultScope`.
    ///   - factory: A factory method that creates a new instance of a service.
    /// - Returns: The main `Resolver`.
    @discardableResult
    public static func register<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = defaultScope,
        factory: @escaping (Resolver, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9) -> Service
    ) -> Resolver {
        main.register(
            type,
            named: name,
            scoped: scope,
            factory: factory
        )
    }

    /// Registers a service with ten arguments.
    ///
    /// - Parameters:
    ///   - type: The type of a service. Defaults to the concrete type that is going to be initialized.
    ///   - name: The name of a service. Defaults to `nil`.
    ///   - scope: The scope of a service. Defaults to `defaultScope`.
    ///   - factory: A factory method that creates a new instance of a service.
    /// - Returns: The main `Resolver`.
    @discardableResult
    public static func register<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9, Arg10>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = defaultScope,
        factory: @escaping (Resolver, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9, Arg10) -> Service
    ) -> Resolver {
        main.register(
            type,
            named: name,
            scoped: scope,
            factory: factory
        )
    }
}

extension Resolver {
    /// Registers a service with one argument.
    ///
    /// - Parameters:
    ///   - type: The type of a service. Defaults to the concrete type that is going to be initialized.
    ///   - name: The name of a service. Defaults to `nil`.
    ///   - scope: The scope of a service. Defaults to `defaultScope`.
    ///   - factory: A factory method that creates a new instance of a service.
    /// - Returns: The current instance of `Resolver` registering a service.
    @discardableResult
    public func register<Service, Arg1>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = defaultScope,
        factory: @escaping (Resolver, Arg1) -> Service
    ) -> Self {
        doRegister(
            type,
            named: name,
            scoped: scope,
            factory: factory
        )
        return self
    }

    /// Registers a service with two arguments.
    ///
    /// - Parameters:
    ///   - type: The type of a service. Defaults to the concrete type that is going to be initialized.
    ///   - name: The name of a service. Defaults to `nil`.
    ///   - scope: The scope of a service. Defaults to `defaultScope`.
    ///   - factory: A factory method that creates a new instance of a service.
    /// - Returns: The current instance of `Resolver` registering a service.
    @discardableResult
    public func register<Service, Arg1, Arg2>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = defaultScope,
        factory: @escaping (Resolver, Arg1, Arg2) -> Service
    ) -> Self {
        doRegister(
            type,
            named: name,
            scoped: scope,
            factory: factory
        )
        return self
    }

    /// Registers a service with three arguments.
    ///
    /// - Parameters:
    ///   - type: The type of a service. Defaults to the concrete type that is going to be initialized.
    ///   - name: The name of a service. Defaults to `nil`.
    ///   - scope: The scope of a service. Defaults to `defaultScope`.
    ///   - factory: A factory method that creates a new instance of a service.
    /// - Returns: The current instance of `Resolver` registering a service.
    @discardableResult
    public func register<Service, Arg1, Arg2, Arg3>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = defaultScope,
        factory: @escaping (Resolver, Arg1, Arg2, Arg3) -> Service
    ) -> Self {
        doRegister(
            type,
            named: name,
            scoped: scope,
            factory: factory
        )
        return self
    }

    /// Registers a service with four arguments.
    ///
    /// - Parameters:
    ///   - type: The type of a service. Defaults to the concrete type that is going to be initialized.
    ///   - name: The name of a service. Defaults to `nil`.
    ///   - scope: The scope of a service. Defaults to `defaultScope`.
    ///   - factory: A factory method that creates a new instance of a service.
    /// - Returns: The current instance of `Resolver` registering a service.
    @discardableResult
    public func register<Service, Arg1, Arg2, Arg3, Arg4>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = defaultScope,
        factory: @escaping (Resolver, Arg1, Arg2, Arg3, Arg4) -> Service
    ) -> Self {
        doRegister(
            type,
            named: name,
            scoped: scope,
            factory: factory
        )
        return self
    }

    /// Registers a service with five arguments.
    ///
    /// - Parameters:
    ///   - type: The type of a service. Defaults to the concrete type that is going to be initialized.
    ///   - name: The name of a service. Defaults to `nil`.
    ///   - scope: The scope of a service. Defaults to `defaultScope`.
    ///   - factory: A factory method that creates a new instance of a service.
    /// - Returns: The current instance of `Resolver` registering a service.
    @discardableResult
    public func register<Service, Arg1, Arg2, Arg3, Arg4, Arg5>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = defaultScope,
        factory: @escaping (Resolver, Arg1, Arg2, Arg3, Arg4, Arg5) -> Service
    ) -> Self {
        doRegister(
            type,
            named: name,
            scoped: scope,
            factory: factory
        )
        return self
    }

    /// Registers a service with six arguments.
    ///
    /// - Parameters:
    ///   - type: The type of a service. Defaults to the concrete type that is going to be initialized.
    ///   - name: The name of a service. Defaults to `nil`.
    ///   - scope: The scope of a service. Defaults to `defaultScope`.
    ///   - factory: A factory method that creates a new instance of a service.
    /// - Returns: The current instance of `Resolver` registering a service.
    @discardableResult
    public func register<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = defaultScope,
        factory: @escaping (Resolver, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6) -> Service
    ) -> Self {
        doRegister(
            type,
            named: name,
            scoped: scope,
            factory: factory
        )
        return self
    }

    /// Registers a service with seven arguments.
    ///
    /// - Parameters:
    ///   - type: The type of a service. Defaults to the concrete type that is going to be initialized.
    ///   - name: The name of a service. Defaults to `nil`.
    ///   - scope: The scope of a service. Defaults to `defaultScope`.
    ///   - factory: A factory method that creates a new instance of a service.
    /// - Returns: The current instance of `Resolver` registering a service.
    @discardableResult
    public func register<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = defaultScope,
        factory: @escaping (Resolver, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7) -> Service
    ) -> Self {
        doRegister(
            type,
            named: name,
            scoped: scope,
            factory: factory
        )
        return self
    }

    /// Registers a service with eight arguments.
    ///
    /// - Parameters:
    ///   - type: The type of a service. Defaults to the concrete type that is going to be initialized.
    ///   - name: The name of a service. Defaults to `nil`.
    ///   - scope: The scope of a service. Defaults to `defaultScope`.
    ///   - factory: A factory method that creates a new instance of a service.
    /// - Returns: The current instance of `Resolver` registering a service.
    @discardableResult
    public func register<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = defaultScope,
        factory: @escaping (Resolver, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8) -> Service
    ) -> Self {
        doRegister(
            type,
            named: name,
            scoped: scope,
            factory: factory
        )
        return self
    }

    /// Registers a service with nine arguments.
    ///
    /// - Parameters:
    ///   - type: The type of a service. Defaults to the concrete type that is going to be initialized.
    ///   - name: The name of a service. Defaults to `nil`.
    ///   - scope: The scope of a service. Defaults to `defaultScope`.
    ///   - factory: A factory method that creates a new instance of a service.
    /// - Returns: The current instance of `Resolver` registering a service.
    @discardableResult
    public func register<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = defaultScope,
        factory: @escaping (Resolver, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9) -> Service
    ) -> Self {
        doRegister(
            type,
            named: name,
            scoped: scope,
            factory: factory
        )
        return self
    }

    /// Registers a service with ten arguments.
    ///
    /// - Parameters:
    ///   - type: The type of a service. Defaults to the concrete type that is going to be initialized.
    ///   - name: The name of a service. Defaults to `nil`.
    ///   - scope: The scope of a service. Defaults to `defaultScope`.
    ///   - factory: A factory method that creates a new instance of a service.
    /// - Returns: The current instance of `Resolver` registering a service.
    @discardableResult
    public func register<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9, Arg10>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        scoped scope: Scope = defaultScope,
        factory: @escaping (Resolver, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9, Arg10) -> Service
    ) -> Self {
        doRegister(
            type,
            named: name,
            scoped: scope,
            factory: factory
        )
        return self
    }
}

extension Resolver {
    /// Resolves a service with one argument registered in the main `Resolver`.
    ///
    /// - Parameters:
    ///   - type: The type of a service. Defaults to the type inferred from the return type.
    ///   - name: The name of a service. Defaults to `nil`.
    ///   - arg1: The first argument of a service.
    /// - Returns: An instance of a registered service or `nil` if it is not registered.
    public static func resolve<Service, Arg1>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1
    ) -> Service? {
        main.resolve(
            type,
            named: name,
            arguments: arg1
        )
    }

    /// Resolves a service with two arguments registered in the main `Resolver`.
    ///
    /// - Parameters:
    ///   - type: The type of a service. Defaults to the type inferred from the return type.
    ///   - name: The name of a service. Defaults to `nil`.
    ///   - arg1: The first argument of a service.
    ///   - arg2: The second argument of a service.
    /// - Returns: An instance of a registered service or `nil` if it is not registered.
    public static func resolve<Service, Arg1, Arg2>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2
    ) -> Service? {
        main.resolve(
            type,
            named: name,
            arguments: arg1, arg2
        )
    }

    /// Resolves a service with three arguments registered in the main `Resolver`.
    ///
    /// - Parameters:
    ///   - type: The type of a service. Defaults to the type inferred from the return type.
    ///   - name: The name of a service. Defaults to `nil`.
    ///   - arg1: The first argument of a service.
    ///   - arg2: The second argument of a service.
    ///   - arg3: The third argument of a service.
    /// - Returns: An instance of a registered service or `nil` if it is not registered.
    public static func resolve<Service, Arg1, Arg2, Arg3>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3
    ) -> Service? {
        main.resolve(
            type,
            named: name,
            arguments: arg1, arg2, arg3
        )
    }

    /// Resolves a service with four arguments registered in the main `Resolver`.
    ///
    /// - Parameters:
    ///   - type: The type of a service. Defaults to the type inferred from the return type.
    ///   - name: The name of a service. Defaults to `nil`.
    ///   - arg1: The first argument of a service.
    ///   - arg2: The second argument of a service.
    ///   - arg3: The third argument of a service.
    ///   - arg4: The fourth argument of a service.
    /// - Returns: An instance of a registered service or `nil` if it is not registered.
    public static func resolve<Service, Arg1, Arg2, Arg3, Arg4>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4
    ) -> Service? {
        main.resolve(
            type,
            named: name,
            arguments: arg1, arg2, arg3, arg4
        )
    }

    /// Resolves a service with five arguments registered in the main `Resolver`.
    ///
    /// - Parameters:
    ///   - type: The type of a service. Defaults to the type inferred from the return type.
    ///   - name: The name of a service. Defaults to `nil`.
    ///   - arg1: The first argument of a service.
    ///   - arg2: The second argument of a service.
    ///   - arg3: The third argument of a service.
    ///   - arg4: The fourth argument of a service.
    ///   - arg5: The fifth argument of a service.
    /// - Returns: An instance of a registered service or `nil` if it is not registered.
    public static func resolve<Service, Arg1, Arg2, Arg3, Arg4, Arg5>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4, _ arg5: Arg5
    ) -> Service? {
        main.resolve(
            type,
            named: name,
            arguments: arg1, arg2, arg3, arg4, arg5
        )
    }

    /// Resolves a service with six arguments registered in the main `Resolver`.
    ///
    /// - Parameters:
    ///   - type: The type of a service. Defaults to the type inferred from the return type.
    ///   - name: The name of a service. Defaults to `nil`.
    ///   - arg1: The first argument of a service.
    ///   - arg2: The second argument of a service.
    ///   - arg3: The third argument of a service.
    ///   - arg4: The fourth argument of a service.
    ///   - arg5: The fifth argument of a service.
    ///   - arg6: The sixth argument of a service.
    /// - Returns: An instance of a registered service or `nil` if it is not registered.
    public static func resolve<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4, _ arg5: Arg5, _ arg6: Arg6
    ) -> Service? {
        main.resolve(
            type,
            named: name,
            arguments: arg1, arg2, arg3, arg4, arg5, arg6
        )
    }

    /// Resolves a service with seven arguments registered in the main `Resolver`.
    ///
    /// - Parameters:
    ///   - type: The type of a service. Defaults to the type inferred from the return type.
    ///   - name: The name of a service. Defaults to `nil`.
    ///   - arg1: The first argument of a service.
    ///   - arg2: The second argument of a service.
    ///   - arg3: The third argument of a service.
    ///   - arg4: The fourth argument of a service.
    ///   - arg5: The fifth argument of a service.
    ///   - arg6: The sixth argument of a service.
    ///   - arg7: The seventh argument of a service.
    /// - Returns: An instance of a registered service or `nil` if it is not registered.
    public static func resolve<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4, _ arg5: Arg5, _ arg6: Arg6, _ arg7: Arg7
    ) -> Service? {
        main.resolve(
            type,
            named: name,
            arguments: arg1, arg2, arg3, arg4, arg5, arg6, arg7
        )
    }

    /// Resolves a service with eight arguments registered in the main `Resolver`.
    ///
    /// - Parameters:
    ///   - type: The type of a service. Defaults to the type inferred from the return type.
    ///   - name: The name of a service. Defaults to `nil`.
    ///   - arg1: The first argument of a service.
    ///   - arg2: The second argument of a service.
    ///   - arg3: The third argument of a service.
    ///   - arg4: The fourth argument of a service.
    ///   - arg5: The fifth argument of a service.
    ///   - arg6: The sixth argument of a service.
    ///   - arg7: The seventh argument of a service.
    ///   - arg8: The eighth argument of a service.
    /// - Returns: An instance of a registered service or `nil` if it is not registered.
    public static func resolve<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4, _ arg5: Arg5, _ arg6: Arg6, _ arg7: Arg7,
        _ arg8: Arg8
    ) -> Service? {
        main.resolve(
            type,
            named: name,
            arguments: arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8
        )
    }

    /// Resolves a service with nine arguments registered in the main `Resolver`.
    ///
    /// - Parameters:
    ///   - type: The type of a service. Defaults to the type inferred from the return type.
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
    /// - Returns: An instance of a registered service or `nil` if it is not registered.
    public static func resolve<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4, _ arg5: Arg5, _ arg6: Arg6, _ arg7: Arg7,
        _ arg8: Arg8, _ arg9: Arg9
    ) -> Service? {
        main.resolve(
            type,
            named: name,
            arguments: arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9
        )
    }

    /// Resolves a service with ten arguments registered in the main `Resolver`.
    ///
    /// - Parameters:
    ///   - type: The type of a service. Defaults to the type inferred from the return type.
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
    /// - Returns: An instance of a registered service or `nil` if it is not registered.
    public static func resolve<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9, Arg10>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4, _ arg5: Arg5, _ arg6: Arg6, _ arg7: Arg7,
        _ arg8: Arg8, _ arg9: Arg9, _ arg10: Arg10
    ) -> Service? {
        main.resolve(
            type,
            named: name,
            arguments: arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10
        )
    }
}

extension Resolver {
    /// Resolves a service with one argument.
    ///
    /// - Parameters:
    ///   - type: The type of a service. Defaults to the type inferred from the return type.
    ///   - name: The name of a service. Defaults to `nil`.
    ///   - arg1: The first argument of a service.
    /// - Returns: An instance of a registered service or `nil` if it is not registered.
    public func resolve<Service, Arg1>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1
    ) -> Service? {
        doResolve(
            type,
            named: name,
            arguments: (self, arg1)
        )
    }

    /// Resolves a service with two arguments.
    ///
    /// - Parameters:
    ///   - type: The type of a service. Defaults to the type inferred from the return type.
    ///   - name: The name of a service. Defaults to `nil`.
    ///   - arg1: The first argument of a service.
    ///   - arg2: The second argument of a service.
    /// - Returns: An instance of a registered service or `nil` if it is not registered.
    public func resolve<Service, Arg1, Arg2>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2
    ) -> Service? {
        doResolve(
            type,
            named: name,
            arguments: (self, arg1, arg2)
        )
    }

    /// Resolves a service with three arguments.
    ///
    /// - Parameters:
    ///   - type: The type of a service. Defaults to the type inferred from the return type.
    ///   - name: The name of a service. Defaults to `nil`.
    ///   - arg1: The first argument of a service.
    ///   - arg2: The second argument of a service.
    ///   - arg3: The third argument of a service.
    /// - Returns: An instance of a registered service or `nil` if it is not registered.
    public func resolve<Service, Arg1, Arg2, Arg3>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3
    ) -> Service? {
        doResolve(
            type,
            named: name,
            arguments: (self, arg1, arg2, arg3)
        )
    }

    /// Resolves a service with four arguments.
    ///
    /// - Parameters:
    ///   - type: The type of a service. Defaults to the type inferred from the return type.
    ///   - name: The name of a service. Defaults to `nil`.
    ///   - arg1: The first argument of a service.
    ///   - arg2: The second argument of a service.
    ///   - arg3: The third argument of a service.
    ///   - arg4: The fourth argument of a service.
    /// - Returns: An instance of a registered service or `nil` if it is not registered.
    public func resolve<Service, Arg1, Arg2, Arg3, Arg4>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4
    ) -> Service? {
        doResolve(
            type,
            named: name,
            arguments: (self, arg1, arg2, arg3, arg4)
        )
    }

    /// Resolves a service with five arguments.
    ///
    /// - Parameters:
    ///   - type: The type of a service. Defaults to the type inferred from the return type.
    ///   - name: The name of a service. Defaults to `nil`.
    ///   - arg1: The first argument of a service.
    ///   - arg2: The second argument of a service.
    ///   - arg3: The third argument of a service.
    ///   - arg4: The fourth argument of a service.
    ///   - arg5: The fifth argument of a service.
    /// - Returns: An instance of a registered service or `nil` if it is not registered.
    public func resolve<Service, Arg1, Arg2, Arg3, Arg4, Arg5>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4, _ arg5: Arg5
    ) -> Service? {
        doResolve(
            type,
            named: name,
            arguments: (self, arg1, arg2, arg3, arg4, arg5)
        )
    }

    /// Resolves a service with six arguments.
    ///
    /// - Parameters:
    ///   - type: The type of a service. Defaults to the type inferred from the return type.
    ///   - name: The name of a service. Defaults to `nil`.
    ///   - arg1: The first argument of a service.
    ///   - arg2: The second argument of a service.
    ///   - arg3: The third argument of a service.
    ///   - arg4: The fourth argument of a service.
    ///   - arg5: The fifth argument of a service.
    ///   - arg6: The sixth argument of a service.
    /// - Returns: An instance of a registered service or `nil` if it is not registered.
    public func resolve<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4, _ arg5: Arg5, _ arg6: Arg6
    ) -> Service? {
        doResolve(
            type,
            named: name,
            arguments: (self, arg1, arg2, arg3, arg4, arg5, arg6)
        )
    }

    /// Resolves a service with seven arguments.
    ///
    /// - Parameters:
    ///   - type: The type of a service. Defaults to the type inferred from the return type.
    ///   - name: The name of a service. Defaults to `nil`.
    ///   - arg1: The first argument of a service.
    ///   - arg2: The second argument of a service.
    ///   - arg3: The third argument of a service.
    ///   - arg4: The fourth argument of a service.
    ///   - arg5: The fifth argument of a service.
    ///   - arg6: The sixth argument of a service.
    ///   - arg7: The seventh argument of a service.
    /// - Returns: An instance of a registered service or `nil` if it is not registered.
    public func resolve<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4, _ arg5: Arg5, _ arg6: Arg6, _ arg7: Arg7
    ) -> Service? {
        doResolve(
            type,
            named: name,
            arguments: (self, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
        )
    }

    /// Resolves a service with eight arguments.
    ///
    /// - Parameters:
    ///   - type: The type of a service. Defaults to the type inferred from the return type.
    ///   - name: The name of a service. Defaults to `nil`.
    ///   - arg1: The first argument of a service.
    ///   - arg2: The second argument of a service.
    ///   - arg3: The third argument of a service.
    ///   - arg4: The fourth argument of a service.
    ///   - arg5: The fifth argument of a service.
    ///   - arg6: The sixth argument of a service.
    ///   - arg7: The seventh argument of a service.
    ///   - arg8: The eighth argument of a service.
    /// - Returns: An instance of a registered service or `nil` if it is not registered.
    public func resolve<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4, _ arg5: Arg5, _ arg6: Arg6, _ arg7: Arg7,
        _ arg8: Arg8
    ) -> Service? {
        doResolve(
            type,
            named: name,
            arguments: (self, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
        )
    }

    /// Resolves a service with nine arguments.
    ///
    /// - Parameters:
    ///   - type: The type of a service. Defaults to the type inferred from the return type.
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
    /// - Returns: An instance of a registered service or `nil` if it is not registered.
    public func resolve<Service, Arg1, Arg2, Arg3, Arg4, Arg5, Arg6, Arg7, Arg8, Arg9>(
        _ type: Service.Type = Service.self,
        named name: String? = nil,
        arguments arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4, _ arg5: Arg5, _ arg6: Arg6, _ arg7: Arg7,
        _ arg8: Arg8, _ arg9: Arg9
    ) -> Service? {
        doResolve(
            type,
            named: name,
            arguments: (self, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
        )
    }

    /// Resolves a service with ten arguments.
    ///
    /// - Parameters:
    ///   - type: The type of a service. Defaults to the type inferred from the return type.
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
    /// - Returns: An instance of a registered service or `nil` if it is not registered.
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
