import Foundation

public final class Lowercase: Format {
    
    public var name: String = "Lowercase"
    public var description: String = "Make all characters lowercase."

    public init() {}

    public func process(_ input: String) -> String {
        guard !input.isEmpty else { return "" }
        return input.lowercased()
    }

}
