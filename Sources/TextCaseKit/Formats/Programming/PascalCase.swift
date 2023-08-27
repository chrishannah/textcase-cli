import Foundation

public final class PascalCase: Format {
    public var name: String = "Pascal Case"
    public var description: String = "Capitalise the first letter of each word, and join together."
    public var id: String = "pascalCaseF"

    private let capitals = [
        "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K",
        "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V",
        "W", "X", "Y", "Z",
    ]

    public init() {}

    public func process(_ input: String) -> String {
        guard !input.isEmpty else { return "" }

        var pascal = input

        if !pascal.contains(" ") {
            for capital in capitals {
                pascal = pascal.replacingOccurrences(of: capital, with: " \(capital)")
            }
        }

        let capitaliseWords = CapitaliseWords()

        return pascal
            .replacingOccurrences(of: "_", with: " ")
            .replacingOccurrences(of: "-", with: " ")
            .split(separator: " ")
            .compactMap { word in
                capitaliseWords.process(String(word))
            }
            .joined(separator: "")
    }
}
