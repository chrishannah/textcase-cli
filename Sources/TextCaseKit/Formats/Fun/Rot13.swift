import Foundation

public final class Rot13: Format {
    
    public var name: String = "Rot13"
    public var description: String = "Reverse all characters."
    public var id: String = "rot13"

    public init() {}

    private let lowercase = "abcdefghijklmnopqrstuvwxyz"
    private let uppercase = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    private let lowercaseConverted = "nopqrstuvwxyzabcdefghijklm"
    private let uppercaseConverted = "NOPQRSTUVWXYZABCDEFGHIJKLM"

    public func process(_ input: String) -> String {
        guard !input.isEmpty else { return "" }
        var output = ""

        for char in input {
            if let index = lowercase.firstIndex(of: char) {
                let converted = lowercaseConverted[index]
                output.append(converted)
            } else if let index = uppercase.firstIndex(of: char) {
                let converted = uppercaseConverted[index]
                output.append(converted)
            } else {
                output.append(char)
            }
        }
        return output
    }

}
