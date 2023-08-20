import Foundation

public final class Sentence: Format {
    
    public var name: String = "Sentence Case"
    public var description: String = "Capitalise text as a sentence."

    public init() {}

    let options: NSLinguisticTagger.Options = []
    let schemes = NSLinguisticTagger.availableTagSchemes(
        forLanguage: Locale.current.language.languageCode?.identifier ?? "en")

    public func process(_ input: String) -> String {
        guard !input.isEmpty else { return "" }
        guard !input.isEmpty else { return input }
        var capitalise = input.lowercased()

        // first character
        let firstCharIndexRange = capitalise.startIndex...capitalise.startIndex
        let firstChar = capitalise[firstCharIndexRange]
        capitalise = capitalise.replacingCharacters(
            in: firstCharIndexRange, with: firstChar.uppercased())

        // find terminators
        let terminators: [Character] = [".", "?", "!"]

        for terminator in terminators {
            var periods: [String.Index] = []
            for i in 0..<capitalise.count {
                let index = capitalise.index(capitalise.startIndex, offsetBy: i)
                if capitalise[index] == terminator {
                    periods.append(index)
                }
            }

            // capitalise after period
            for periodIndex in periods {
                if periodIndex == capitalise.endIndex {
                    break
                }

                for i in 0..<3 {
                    let offsetIndex = capitalise.index(periodIndex, offsetBy: i)

                    if offsetIndex == capitalise.endIndex {
                        break
                    } else {
                        if capitalise[offsetIndex] != " " {
                            capitalise = capitalise.replacingCharacters(
                                in: offsetIndex...offsetIndex,
                                with: "\(capitalise[offsetIndex])".uppercased())
                        }
                    }
                }
            }
        }

        let tagger = NSLinguisticTagger(tagSchemes: schemes, options: Int(options.rawValue))

        var words: [String] = []

        tagger.string = capitalise
        tagger.enumerateTags(
            in: NSRange(location: 0, length: NSString(string: capitalise).length),
            scheme: NSLinguisticTagScheme.nameType, options: options) { tag, tokenRange, _, _ in
            var token = NSString(string: capitalise).substring(with: tokenRange)

            if tag?.rawValue == "PlaceName" || tag?.rawValue == "PersonalName"
                || tag? .rawValue == "OrganizationalName" {
                words.append(token.capitalized)
            } else {
                words.append(token)
            }
        }

        return words.joined()
    }

}
