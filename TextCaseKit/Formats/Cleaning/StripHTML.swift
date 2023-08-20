import Foundation

public final class StripHTML: Format {
    
    public var name: String = "Strip HTML"
    public var description: String = "Strip all HTML tags."

    public init() {}

    public func process(_ input: String) -> String {
        guard !input.isEmpty else { return "" }

        let regex = "<[^>]+>"
        
        return input
            .replacingOccurrences(of: regex, with: "", options: .regularExpression, range: nil)
            .trimmingCharacters(in: .whitespacesAndNewlines)
    }

}
