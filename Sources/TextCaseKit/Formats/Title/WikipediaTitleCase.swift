import Foundation

public final class WikipediaTitleCase: BaseTitleCase, Format {
    public var name: String = "Wikipedia Title"
    public var description: String = "Format text as a title using Wikipedia's style."
    public var id: String = "wikipediaTitle"

    public init() {
        let configuration = TitleCaseConfiguration(shouldIgnoreLinguisticTagger: false,
                                                   shouldCapitaliseFirstWord: true,
                                                   shouldCapitaliseLastWord: true,
                                                   shouldCapitaliseAfterEndPunctionation: true,
                                                   wordsToAlwaysBeCapitalised: [],
                                                   wordsToNeverBeCapitalised: [
                                                       "and",
                                                       "but",
                                                       "for",
                                                       "nor",
                                                       "or",
                                                       "so",
                                                       "yet",
                                                       "a",
                                                       "an",
                                                       "the",
                                                       "as",
                                                       "at",
                                                       "by",
                                                       "in",
                                                       "of",
                                                       "off",
                                                       "on",
                                                       "per",
                                                       "to",
                                                       "up",
                                                       "via",
                                                   ],
                                                   capitaliseAllPrepositionsLongerThanLength: nil,
                                                   capitaliseAllConjunctionLongerThanLength: nil,
                                                   capitaliseAllAdverbsLongerThanLength: 0,
                                                   capitaliseAllAdjectivesLongerThanLength: 0,
                                                   capitaliseAllVerbsLongerThanLength: 0,
                                                   shouldCapitalisePronouns: true,
                                                   shouldCapitaliseAllWordsAboveLength: 3)
        super.init(configuration: configuration)
    }
}
