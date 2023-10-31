//

import Foundation

public final class CountCharactersExcWhitespace: Format {
    public var name: String = "Count Characters Excl. Whitespace"
    public var id: String = "countCharactersExclWhitespace"
    public var description: String = "Count number of characters, excluding any whitespace characters."
    
    public init() {}
    
    public func process(_ input: String) -> String {
        guard !input.isEmpty else { return "0" }
        let trimmed = input.components(separatedBy: .whitespacesAndNewlines).joined()
        return "\(trimmed.count)"
    }
}
