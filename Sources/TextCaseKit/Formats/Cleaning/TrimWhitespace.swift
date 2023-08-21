import Foundation

public final class TrimWhitespace: Format {
    
    public var name: String = "Trim Whitespace"
    public var description: String = "Remove any preceeding or succeeding whitespace."
    public var id: String = "trimWhitespace"

    public init() {}

    public func process(_ input: String) -> String {
        guard !input.isEmpty else { return "" }
        return input.trimmingCharacters(in: .whitespacesAndNewlines)
    }

}
