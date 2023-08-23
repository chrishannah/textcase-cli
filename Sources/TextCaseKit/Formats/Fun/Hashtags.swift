import Foundation

public final class Hashtags: Format {
    public var name: String = "Hashtags"
    public var description: String = "Convert words into hashtags."
    public var id: String = "hashtags"

    public init() {}

    public func process(_ input: String) -> String {
        guard !input.isEmpty else { return "" }
        let withoutSpaces = input.replacingOccurrences(of: " ", with: "")
        guard !withoutSpaces.isEmpty else { return input }

        var hashtags = input

        if !input.hasPrefix(" ") {
            hashtags = "#\(hashtags)"
        }

        hashtags = hashtags.replacingOccurrences(of: "#", with: " ")

        let alternativeSeparators = [",", ".", ":", ";"]
        for separator in alternativeSeparators {
            hashtags = hashtags.replacingOccurrences(of: separator, with: "")
        }

        var cleaningMultipleSpaces = true
        while cleaningMultipleSpaces {
            hashtags = hashtags.replacingOccurrences(of: "  ", with: " ")
            cleaningMultipleSpaces = hashtags.contains("  ")
        }

        hashtags = hashtags.replacingOccurrences(of: " ", with: " #")

        return TrimWhitespace().process(hashtags)
    }
}
