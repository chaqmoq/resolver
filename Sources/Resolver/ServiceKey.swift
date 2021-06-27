typealias ServiceType = Any.Type
typealias ArgumentsType = Any.Type

struct ServiceKey: Hashable {
    let serviceType: ServiceType
    let name: String?
    let argumentsType: ArgumentsType?

    init(serviceType: ServiceType, name: String? = nil, argumentsType: ArgumentsType? = nil) {
        self.serviceType = serviceType
        self.name = name
        self.argumentsType = argumentsType
    }

    func hash(into hasher: inout Hasher) {
        ObjectIdentifier(serviceType).hash(into: &hasher)
        name?.hash(into: &hasher)
        if let argumentsType = argumentsType { ObjectIdentifier(argumentsType).hash(into: &hasher) }
    }

    static func == (lhs: ServiceKey, rhs: ServiceKey) -> Bool {
        lhs.serviceType == rhs.serviceType && lhs.name == rhs.name && lhs.argumentsType == rhs.argumentsType
    }
}
