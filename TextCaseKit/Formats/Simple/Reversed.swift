import Foundation

public final class Reversed: Format {
   
    public var name: String = "Reversed"
    public var description: String = "Reverse all characters."

    public init() {}

    public func process(_ input: String) -> String {
        guard !input.isEmpty else { return "" }
        return String(input.reversed())
    }
}
