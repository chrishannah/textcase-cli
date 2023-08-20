import Foundation

public final class ClapCase: Format {
    
    public var name: String = "Clap Case"
    public var description: String = "Put 👏 between every word."

    public init() {}

    public func process(_ input: String) -> String {
        guard !input.isEmpty else { return "" }
        var clapped = input

        let separators = [" ", "_", "-"]

        for separator in separators {
            clapped = clapped.replacingOccurrences(of: separator, with: " 👏 ")
        }

        return clapped
    }

}
