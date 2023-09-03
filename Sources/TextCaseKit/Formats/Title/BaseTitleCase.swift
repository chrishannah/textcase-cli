import Foundation

public class BaseTitleCase {
    var configuration: TitleCaseConfiguration

    let options: NSLinguisticTagger.Options = [.omitWhitespace, .joinNames]
    let schemes = NSLinguisticTagger.availableTagSchemes(forLanguage: Locale.current.language.languageCode?.identifier ?? "en")
    var tagger: NSLinguisticTagger

    var wordsToAlwaysBeCapitalised: [String] = []
    var wordsToNeverBeCapitalised: [String] = []
    var wordsToBeInitiallyLowercase: [String] = []
    var previousWordEndsWithEndMark = false

    init(configuration: TitleCaseConfiguration) {
        self.configuration = configuration
        tagger = NSLinguisticTagger(tagSchemes: schemes, options: Int(options.rawValue))
    }

    public func process(_ input: String) -> String {
        wordsToAlwaysBeCapitalised = []
        wordsToNeverBeCapitalised = []
        wordsToBeInitiallyLowercase = []
        previousWordEndsWithEndMark = false

        guard !input.isEmpty else { return "" }
        var text = input.lowercased()

        let scanner = Scanner(string: text)
        scanner.caseSensitive = true

        // Do some word analysis and extract any words that need to be capitalised
        // based on the rules set in the configuration.
        wordsToAlwaysBeCapitalised = configuration.wordsToAlwaysBeCapitalised
        wordsToNeverBeCapitalised = configuration.wordsToNeverBeCapitalised

        tagger.string = text
        tagger.enumerateTags(in: NSRange(location: 0, length: NSString(string: text).length),
                             scheme: NSLinguisticTagScheme.lexicalClass, options: options)
        { tag, tokenRange, _, _ in
            let token = NSString(string: text).substring(with: tokenRange)

            switch tag?.rawValue {
            case "Preposition":
                if let length = configuration.capitaliseAllPrepositionsLongerThanLength,
                   token.count > length
                {
                    wordsToAlwaysBeCapitalised.append(token.lowercased())
                } else {
                    wordsToNeverBeCapitalised.append(token.lowercased())
                }
            case "Conjunction":
                if let length = configuration.capitaliseAllConjunctionLongerThanLength,
                   token.count > length
                {
                    wordsToAlwaysBeCapitalised.append(token.lowercased())
                } else {
                    wordsToNeverBeCapitalised.append(token.lowercased())
                }
            case "Adverb":
                if let length = configuration.capitaliseAllAdverbsLongerThanLength,
                   token.count > length
                {
                    wordsToAlwaysBeCapitalised.append(token.lowercased())
                } else {
                    wordsToBeInitiallyLowercase.append(token.lowercased())
                }
            case "Adjective":
                if let length = configuration.capitaliseAllAdjectivesLongerThanLength,
                   token.count > length
                {
                    wordsToAlwaysBeCapitalised.append(token.lowercased())
                } else {
                    wordsToBeInitiallyLowercase.append(token.lowercased())
                }
            case "Noun":
                wordsToAlwaysBeCapitalised.append(token.lowercased())
            case "Verb":
                if let length = configuration.capitaliseAllVerbsLongerThanLength,
                   token.count > length
                {
                    wordsToAlwaysBeCapitalised.append(token.lowercased())
                } else {
                    wordsToBeInitiallyLowercase.append(token.lowercased())
                }
            case "Pronoun":
                if configuration.shouldCapitalisePronouns {
                    wordsToAlwaysBeCapitalised.append(token.lowercased())
                } else {
                    wordsToBeInitiallyLowercase.append(token.lowercased())
                }
            case "Particle":
                wordsToBeInitiallyLowercase.append(token.lowercased())
            default:
                break
            }
        }

        // Trim leading/trailing whitespace
        text = text.trimmingCharacters(in: .whitespacesAndNewlines)

        var words: [String] = []
        while !scanner.isAtEnd {
            // Get word by continuously scanning until we hit whitespace or end of line.
            let word = scanner.scanUpToCharacters(from: .whitespaces) ?? ""
            let formatted = formatWord(input: word, scanner: scanner)
            words.append(formatted)
        }

        for i in 0 ..< words.count {
            let word = words[i]

            if i == 0 {
                words[i] = word.capitalized
            } else if i == words.count - 1, configuration.shouldCapitaliseLastWord {
                words[i] = word.capitalized
            }
        }

        return words.joined(separator: " ")
    }

    private func formatWord(input: String, scanner: Scanner) -> String {
        var word = input

        // 1. Lowercase all words that have been detected by the initial analysis, but may
        // be overriden later by other rules.
        if wordsToBeInitiallyLowercase.contains(word.lowercased()) {
            word = word.lowercased()
        }

        // Split all words via a hyphen, and format them seperately.
        // Some formats may have quirks about hyphens, but those rules are outside of the
        // scope for this app.
        let separators: [Character] = ["-", "–", "—"]
        for separator in separators {
            let split = word.split(separator: separator)
            if split.count > 1 {
                var pieces: [String] = []
                for splice in split {
                    pieces.append(formatWord(input: String(splice), scanner: scanner))
                }
                word = pieces.joined(separator: separator.lowercased())
            }
        }

        // Capitalise last word (depending on configuration)
        if scanner.isAtEnd, configuration.shouldCapitaliseLastWord {
            word = word.capitalized
        }

        // Capitalise all words that have explicitly been marked to be so
        if wordsToAlwaysBeCapitalised.contains(word.lowercased()) {
            word = word.capitalized
        }

        // Lowercase all words that have explicitly been marked to be so
        if wordsToNeverBeCapitalised.contains(word.lowercased()) {
            word = word.lowercased()
        }

        // Capitalise all words after an end mark or a few extra punctuation marks
        if configuration.shouldCapitaliseAfterEndPunctionation, previousWordEndsWithEndMark {
            word = word.capitalized
        }

        // Now check the current word for the end marks
        previousWordEndsWithEndMark = false
        if let char = word.last {
            let charsToLookFor = ["!", "?", ".", ":"]
            previousWordEndsWithEndMark = charsToLookFor.contains(String(char))
        }

        // Capitalise all words above a specific length
        if let length = configuration.shouldCapitaliseAllWordsAboveLength, word.count > length {
            word = word.capitalized
        }

        // This word has been formatted!
        return word
    }
}
