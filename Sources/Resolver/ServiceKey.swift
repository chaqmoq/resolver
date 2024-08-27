struct ServiceKey: Hashable {
    typealias ServiceType = Any.Type
    typealias ArgumentsType = Any.Type

    let type: ServiceType
    let name: String?
    let argumentsType: ArgumentsType?

    init(
        type: ServiceType,
        name: String? = nil,
        argumentsType: ArgumentsType? = nil
    ) {
        self.type = type
        self.name = name
        self.argumentsType = argumentsType
    }

    func hash(into hasher: inout Hasher) {
        ObjectIdentifier(type).hash(into: &hasher)
        name?.hash(into: &hasher)

        if let argumentsType = argumentsType {
            ObjectIdentifier(argumentsType).hash(into: &hasher)
        }
    }

    static func == (lhs: ServiceKey, rhs: ServiceKey) -> Bool {
        lhs.type == rhs.type &&
        lhs.name == rhs.name &&
        lhs.argumentsType == rhs.argumentsType
    }
}
