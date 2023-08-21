import Foundation

public final class CapitaliseWords: Format {
    
    public var name: String = "Capitalise Words"
    public var description: String = "Capitalise all words."
    public var id: String = "capitaliseWords"

    public init() {}

    public func process(_ input: String) -> String {
        guard !input.isEmpty else { return "" }
        let lowercase = input.lowercased()

        let capitalised = capitaliseAfterSeparator(lowercase)

        return capitalised
    }

    private func capitaliseAfterSeparator(_ input: String) -> String {
        let inputString = input.capitalized
        var splitBuffer = ""
        var splitOutput = ""

        for character in inputString {
            if character == "-" || character == ":" {
                splitBuffer = splitBuffer.capitalized
                splitOutput += splitBuffer
                splitBuffer = ""
                splitBuffer += character.description
            } else {
                splitBuffer += character.description
            }
        }
        
        splitOutput += splitBuffer.capitalized

        return splitOutput
    }
}
