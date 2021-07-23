@propertyWrapper public struct Injected<Service> {
    public var wrappedValue: Service {
        get { service }
        set { service = newValue }
    }

    private var service: Service

    public init(resolver: Resolver = .main, name: String? = nil) {
        service = resolver.resolve(Service.self, named: name)!
    }
}
