import Foundation

public final class Uppercase: Format {
    
    public var name: String = "Uppercase"
    public var description: String = "Make all characters uppercase."

    public init() {}

    public func process(_ input: String) -> String {
        guard !input.isEmpty else { return "" }
        return input.uppercased()
    }

}
