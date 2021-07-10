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

final class ServiceWithThreeArguments {
    let arg1: String
    let arg2: Int
    let arg3: Float

    init(arg1: String, arg2: Int, arg3: Float) {
        self.arg1 = arg1
        self.arg2 = arg2
        self.arg3 = arg3
    }
}

final class ServiceWithFourArguments {
    let arg1: String
    let arg2: Int
    let arg3: Float
    let arg4: Double

    init(arg1: String, arg2: Int, arg3: Float, arg4: Double) {
        self.arg1 = arg1
        self.arg2 = arg2
        self.arg3 = arg3
        self.arg4 = arg4
    }
}
