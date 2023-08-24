import Foundation

public final class Spongebob: Format {
    public var name: String = "Mocking Spongebob"
    public var description: String =
        "Turn your words into something sarcastic Spongebob would say"
    public var id: String = "mockingSpongebob"

    public init() {}

    public func process(_ input: String) -> String {
        guard !input.isEmpty else { return "" }
        let text = input.lowercased()
        var spOnGEbOb = ""

        let chanceOfCapital: UInt32 = 5 // Between 1 and 10
        for character in text {
            var charString = character.description
            let random = arc4random_uniform(10)
            if random < chanceOfCapital {
                charString = charString.capitalized
            }
            spOnGEbOb += charString
        }

        return spOnGEbOb
    }
}
