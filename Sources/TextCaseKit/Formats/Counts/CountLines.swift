//

import Foundation

public final class CountLines: Format {
    public var name: String = "Count Lines"
    public var id: String = "countLines"
    public var description: String = "Count number of lines."
    
    public init() {}
    
    public func process(_ input: String) -> String {
        guard !input.isEmpty else { return "0" }
        let lines = input.components(separatedBy: .newlines)
        return "\(lines.count)"
    }
}
