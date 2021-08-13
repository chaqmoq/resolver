import Resolver

final class Service1 {}

final class Service2 {
    let arg1: Service1

    init(arg1: Service1) {
        self.arg1 = arg1
    }
}

final class Service3 {
    let arg1: Service2

    init(arg1: Service2) {
        self.arg1 = arg1
    }
}

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

final class ServiceWithFiveArguments {
    let arg1: String
    let arg2: Int
    let arg3: Float
    let arg4: Double
    let arg5: Bool

    init(arg1: String, arg2: Int, arg3: Float, arg4: Double, arg5: Bool) {
        self.arg1 = arg1
        self.arg2 = arg2
        self.arg3 = arg3
        self.arg4 = arg4
        self.arg5 = arg5
    }
}

final class ServiceWithSixArguments {
    let arg1: String
    let arg2: Int
    let arg3: Float
    let arg4: Double
    let arg5: Bool
    let arg6: Character

    init(arg1: String, arg2: Int, arg3: Float, arg4: Double, arg5: Bool, arg6: Character) {
        self.arg1 = arg1
        self.arg2 = arg2
        self.arg3 = arg3
        self.arg4 = arg4
        self.arg5 = arg5
        self.arg6 = arg6
    }
}

final class ServiceWithSevenArguments {
    let arg1: String
    let arg2: Int
    let arg3: Float
    let arg4: Double
    let arg5: Bool
    let arg6: Character
    let arg7: UInt

    init(arg1: String, arg2: Int, arg3: Float, arg4: Double, arg5: Bool, arg6: Character, arg7: UInt) {
        self.arg1 = arg1
        self.arg2 = arg2
        self.arg3 = arg3
        self.arg4 = arg4
        self.arg5 = arg5
        self.arg6 = arg6
        self.arg7 = arg7
    }
}

final class ServiceWithEightArguments {
    let arg1: String
    let arg2: Int
    let arg3: Float
    let arg4: Double
    let arg5: Bool
    let arg6: Character
    let arg7: UInt
    let arg8: UInt8

    init(arg1: String, arg2: Int, arg3: Float, arg4: Double, arg5: Bool, arg6: Character, arg7: UInt, arg8: UInt8) {
        self.arg1 = arg1
        self.arg2 = arg2
        self.arg3 = arg3
        self.arg4 = arg4
        self.arg5 = arg5
        self.arg6 = arg6
        self.arg7 = arg7
        self.arg8 = arg8
    }
}

final class ServiceWithNineArguments {
    let arg1: String
    let arg2: Int
    let arg3: Float
    let arg4: Double
    let arg5: Bool
    let arg6: Character
    let arg7: UInt
    let arg8: UInt8
    let arg9: UInt16

    init(
        arg1: String,
        arg2: Int,
        arg3: Float,
        arg4: Double,
        arg5: Bool,
        arg6: Character,
        arg7: UInt,
        arg8: UInt8,
        arg9: UInt16
    ) {
        self.arg1 = arg1
        self.arg2 = arg2
        self.arg3 = arg3
        self.arg4 = arg4
        self.arg5 = arg5
        self.arg6 = arg6
        self.arg7 = arg7
        self.arg8 = arg8
        self.arg9 = arg9
    }
}

final class ServiceWithTenArguments {
    let arg1: String
    let arg2: Int
    let arg3: Float
    let arg4: Double
    let arg5: Bool
    let arg6: Character
    let arg7: UInt
    let arg8: UInt8
    let arg9: UInt16
    let arg10: UInt32

    init(
        arg1: String,
        arg2: Int,
        arg3: Float,
        arg4: Double,
        arg5: Bool,
        arg6: Character,
        arg7: UInt,
        arg8: UInt8,
        arg9: UInt16,
        arg10: UInt32
    ) {
        self.arg1 = arg1
        self.arg2 = arg2
        self.arg3 = arg3
        self.arg4 = arg4
        self.arg5 = arg5
        self.arg6 = arg6
        self.arg7 = arg7
        self.arg8 = arg8
        self.arg9 = arg9
        self.arg10 = arg10
    }
}

final class InjectedService1 {
    @Injected var arg1: Service1
}

final class InjectedService2 {
    @Injected(arguments: "string")
    var arg1: ServiceWithOneArgument
}

final class InjectedService3 {
    @Injected(arguments: "string", 1)
    var arg1: ServiceWithTwoArguments
}

final class InjectedService4 {
    @Injected(arguments: "string", 1, Float(2.5))
    var arg1: ServiceWithThreeArguments
}

final class InjectedService5 {
    @Injected(arguments: "string", 1, Float(2.5), 3.2)
    var arg1: ServiceWithFourArguments
}

final class InjectedService6 {
    @Injected(arguments: "string", 1, Float(2.5), 3.2, true)
    var arg1: ServiceWithFiveArguments
}

final class InjectedService7 {
    @Injected(arguments: "string", 1, Float(2.5), 3.2, true, Character("a"))
    var arg1: ServiceWithSixArguments
}

final class InjectedService8 {
    @Injected(arguments: "string", 1, Float(2.5), 3.2, true, Character("a"), UInt(4))
    var arg1: ServiceWithSevenArguments
}

final class InjectedService9 {
    @Injected(arguments: "string", 1, Float(2.5), 3.2, true, Character("a"), UInt(4), UInt8(5))
    var arg1: ServiceWithEightArguments
}

final class InjectedService10 {
    @Injected(arguments: "string", 1, Float(2.5), 3.2, true, Character("a"), UInt(4), UInt8(5), UInt16(6))
    var arg1: ServiceWithNineArguments
}

final class InjectedService11 {
    @Injected(arguments: "string", 1, Float(2.5), 3.2, true, Character("a"), UInt(4), UInt8(5), UInt16(6), UInt32(7))
    var arg1: ServiceWithTenArguments
}

final class OptionalInjectedService1 {
    @OptionalInjected var arg1: Service1?
}

final class OptionalInjectedService2 {
    @OptionalInjected(arguments: "string")
    var arg1: ServiceWithOneArgument?
}

final class OptionalInjectedService3 {
    @OptionalInjected(arguments: "string", 1)
    var arg1: ServiceWithTwoArguments?
}

final class OptionalInjectedService4 {
    @OptionalInjected(arguments: "string", 1, Float(2.5))
    var arg1: ServiceWithThreeArguments?
}

final class OptionalInjectedService5 {
    @OptionalInjected(arguments: "string", 1, Float(2.5), 3.2)
    var arg1: ServiceWithFourArguments?
}

final class OptionalInjectedService6 {
    @OptionalInjected(arguments: "string", 1, Float(2.5), 3.2, true)
    var arg1: ServiceWithFiveArguments?
}
