import Foundation

public final class KebabCase: Format {
    public var name: String = "Kebab Case"
    public var description: String = "Make all letters lowercase and join with a hyphen."
    public var id: String = "kebabCase"

    private let capitals = [
        "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K",
        "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V",
        "W", "X", "Y", "Z",
    ]

    public init() {}

    public func process(_ input: String) -> String {
        guard !input.isEmpty else { return "" }

        var kebab = input

        if !kebab.contains(" ") {
            for capital in capitals {
                kebab = kebab.replacingOccurrences(of: capital, with: " \(capital)")
            }
        }

        return kebab
            .lowercased()
            .replacingOccurrences(of: "_", with: " ")
            .split(separator: " ")
            .compactMap { word in
                word
            }
            .joined(separator: "-")
    }
}
