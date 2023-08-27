import Foundation

public final class SnakeCase: Format {
    public var name: String = "Snake Case"
    public var description: String = "Make all letters lowercase and join with an underscore."
    public var id: String = "snakeCase"

    private let capitals = [
        "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K",
        "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V",
        "W", "X", "Y", "Z",
    ]

    public init() {}

    public func process(_ input: String) -> String {
        guard !input.isEmpty else { return "" }

        var snake = input

        if !snake.contains(" ") {
            for capital in capitals {
                snake = snake.replacingOccurrences(of: capital, with: " \(capital)")
            }
        }

        return snake
            .lowercased()
            .replacingOccurrences(of: "_", with: " ")
            .replacingOccurrences(of: "-", with: " ")
            .split(separator: " ")
            .compactMap { word in
                word
            }
            .joined(separator: "_")
    }
}
