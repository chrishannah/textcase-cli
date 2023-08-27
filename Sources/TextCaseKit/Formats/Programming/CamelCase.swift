import Foundation

public final class CamelCase: Format {
    public var name: String = "Camel Case"
    public var description: String = "Capitalise the first letter of each word, except the first, and join together."
    public var id: String = "camelCase"

    private let capitals = [
        "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K",
        "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V",
        "W", "X", "Y", "Z",
    ]

    public init() {}

    public func process(_ input: String) -> String {
        guard !input.isEmpty else { return "" }

        var camel = input

        if !camel.contains(" ") {
            for capital in capitals {
                camel = camel.replacingOccurrences(of: capital, with: " \(capital)")
            }
        }

        camel = camel
            .replacingOccurrences(of: "_", with: " ")
            .replacingOccurrences(of: "-", with: " ")

        let capitaliseWords = CapitaliseWords()

        camel = camel
            .split(separator: " ")
            .compactMap { word in
                capitaliseWords.process(String(word))
            }
            .joined(separator: "")

        guard !camel.isEmpty else { return "" }

        let firstChar = camel[camel.startIndex]
        camel = camel.replacingCharacters(in: camel.startIndex ... camel.startIndex,
                                          with: String(firstChar).lowercased())

        return camel
    }
}
