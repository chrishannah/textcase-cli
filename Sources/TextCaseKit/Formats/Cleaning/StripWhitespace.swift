import Foundation

public final class StripWhitespace: Format {

    public var name: String = "Strip Whitespace"
    public var description: String = "Remove all whitespace."
    public var id: String = "stripWhitespace"

    public init() {}

    public func process(_ input: String) -> String {
        guard !input.isEmpty else { return "" }
        return input.components(separatedBy: .whitespacesAndNewlines).joined()
    }

}
