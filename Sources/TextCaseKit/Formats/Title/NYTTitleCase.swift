import Foundation

public final class NYTTitleCase: BaseTitleCase, Format {
    public var name: String = "NYT Title"
    public var description: String = "Format text as a title using New York Times style."
    public var id: String = "nytTitle"

    public init() {
        let configuration = TitleCaseConfiguration(shouldIgnoreLinguisticTagger: false,
                                                   shouldCapitaliseFirstWord: true,
                                                   shouldCapitaliseLastWord: false,
                                                   shouldCapitaliseAfterEndPunctionation: true,
                                                   wordsToAlwaysBeCapitalised: [
                                                       "no",
                                                       "nor",
                                                       "not",
                                                       "off",
                                                       "out",
                                                       "so",
                                                       "up",
                                                   ],
                                                   wordsToNeverBeCapitalised: [
                                                       "a",
                                                       "and",
                                                       "as",
                                                       "at",
                                                       "but",
                                                       "by",
                                                       "en",
                                                       "for",
                                                       "if",
                                                       "in",
                                                       "of",
                                                       "on",
                                                       "or",
                                                       "the",
                                                       "to",
                                                       "v.",
                                                       "vs.",
                                                       "via",
                                                   ],
                                                   capitaliseAllPrepositionsLongerThanLength: 4,
                                                   capitaliseAllConjunctionLongerThanLength: 0,
                                                   capitaliseAllAdverbsLongerThanLength: 0,
                                                   capitaliseAllAdjectivesLongerThanLength: 0,
                                                   capitaliseAllVerbsLongerThanLength: 0,
                                                   shouldCapitalisePronouns: true,
                                                   shouldCapitaliseAllWordsAboveLength: 3)
        super.init(configuration: configuration)
    }
}
