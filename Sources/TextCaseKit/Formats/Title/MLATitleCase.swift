import Foundation

public final class MLATitleCase: BaseTitleCase, Format {
    public var name: String = "MLA Title"
    public var description: String = "Format text as a title using MLA style."
    public var id: String = "mlaTitle"

    public init() {
        let configuration = TitleCaseConfiguration(shouldIgnoreLinguisticTagger: false,
                                                   shouldCapitaliseFirstWord: true,
                                                   shouldCapitaliseLastWord: true,
                                                   shouldCapitaliseAfterEndPunctionation: true,
                                                   wordsToAlwaysBeCapitalised: [],
                                                   wordsToNeverBeCapitalised: [
                                                       "a",
                                                       "an",
                                                       "the",
                                                       "and",
                                                       "but",
                                                       "for",
                                                       "nor",
                                                       "or",
                                                       "so",
                                                       "yet",
                                                   ],
                                                   capitaliseAllPrepositionsLongerThanLength: nil,
                                                   capitaliseAllConjunctionLongerThanLength: 0,
                                                   capitaliseAllAdverbsLongerThanLength: 0,
                                                   capitaliseAllAdjectivesLongerThanLength: 0,
                                                   capitaliseAllVerbsLongerThanLength: 0,
                                                   shouldCapitalisePronouns: true,
                                                   shouldCapitaliseAllWordsAboveLength: nil)
        super.init(configuration: configuration)
    }
}
