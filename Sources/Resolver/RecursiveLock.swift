import Foundation

final class RecursiveLock {
    private let lock = NSRecursiveLock()

    func sync<T>(function: () -> T) -> T {
        lock.lock()
        defer { lock.unlock() }

        return function()
    }
}
