//

import Foundation

public final class CountWords: Format {
    public var name: String = "Count Words"
    public var id: String = "countWords"
    public var description: String = "Count number of words."
    
    public init() {}
    
    public func process(_ input: String) -> String {
        guard !input.isEmpty else { return "0" }
        let components = input.components(separatedBy: .whitespacesAndNewlines)
        let words = components.filter { !$0.isEmpty }
        return "\(words.count)"
    }
}
