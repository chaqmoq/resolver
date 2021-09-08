/// A configuration option that determines how a new instance of a service is created.
public enum Scope: String, CaseIterable, CustomStringConvertible {
    /// Creates one instance that exists for lifetime of an app or until the cache is reset or it is evicted from the cache due to memory pressure.
    case cached

    /// Creates one instance during a given resolution cycle.
    case graph

    /// Creates one instance that exists while a strong reference to it exists. Only works with reference types.
    case shared

    /// Creates one instance that exists for lifetime of an app.
    case singleton

    /// Always creates a new instance.
    case unique

    /// See `CustomStringConvertible`.
    public var description: String { rawValue }
}
