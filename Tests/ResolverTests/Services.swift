final class Service {}

final class ServiceWithOneArgument {
    let arg1: String

    init(arg1: String) {
        self.arg1 = arg1
    }
}

final class ServiceWithTwoArguments {
    let arg1: String
    let arg2: Int

    init(arg1: String, arg2: Int) {
        self.arg1 = arg1
        self.arg2 = arg2
    }
}
