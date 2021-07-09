public enum Scope: String, CaseIterable, CustomStringConvertible {
    case cached
    case graph
    case shared
    case singleton
    case unique

    public var description: String { rawValue }
}
