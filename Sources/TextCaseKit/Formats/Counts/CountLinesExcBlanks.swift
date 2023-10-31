//

import Foundation

public final class CountLinesExcBlanks: Format {
    public var name: String = "Count Lines Excl. Blanks"
    public var id: String = "countLinesExclBlanks"
    public var description: String = "Count number of lines, excluding any blank lines."
    
    public init() {}
    
    public func process(_ input: String) -> String {
        guard !input.isEmpty else { return "0" }
        let components = input.components(separatedBy: .newlines)
        let lines = components.filter { !$0.isEmpty }
        return "\(lines.count)"
    }
}
