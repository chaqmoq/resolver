public enum Scope: String, CaseIterable, CustomStringConvertible {
    case cached, graph, shared, singleton, unique

    public var description: String { rawValue }
}
