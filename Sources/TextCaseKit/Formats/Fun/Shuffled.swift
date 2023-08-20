import Foundation

public final class Shuffled: Format {
    
    public var name: String = "Shuffled"
    public var description: String = "Shuffle all characters."

    public init() {}

    public func process(_ input: String) -> String {
        guard !input.isEmpty else { return "" }
        return String(input.shuffled())
    }

}
